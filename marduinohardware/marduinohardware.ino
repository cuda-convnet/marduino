#include <SPI.h>
#include <Ethernet.h>
#include "SIM900.h"
#include <SoftwareSerial.h>
#include "inetGSM.h"
#include "ArduinoJson.h"


byte mac[] = { 0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x02 };
EthernetClient client;

const char server[] = "server.ritm.haat.sharksolutions.com.br";
const char* BASIC_AUTH =
		"c3ByaW5nLXNlY3VyaXR5LW9hdXRoMi1yZWFkLXdyaXRlLWNsaWVudDpzcHJpbmctc2VjdXJpdHktb2F1dGgyLXJlYWQtd3JpdGUtY2xpZW50LXBhc3N3b3JkMTIzNA==";
const String OAUTH_TOKEN_HEADER =
		"grant_type=password&username=admin&password=admin1234&client_id=spring-security-oauth2-read-write-client";
char* token = "";
char* expiresIn= "";
unsigned long lastConnectionTime = 0; // last time you connected to the server, in milliseconds
boolean lastConnected = false; // state of the connection last time through the main loop
unsigned long postingInterval = 10000; // delay between updates, in milliseconds
boolean isEthernet = false;
boolean isGSM = false;
boolean isInternet = false;

char inSerial[50];
int i = 0;

// GSM
InetGSM inet;
// Dados que serão retornados nas requisições
// O número de dados
int numdata;
// O retorno da requisição
char msg[4000];
char* GSM_INTERNET_APN = (char*) "zap.vivo.com.br";
char* GSM_INTERNET_USERNAME = (char*) "vivo";
char* GSM_INTERNET_PASSWORD = (char*) "vivo";

void setup() {

	Serial.begin(9600);
	while (!Serial) continue;

	Serial.println("Configurando Ethernet Shield...");

	if (Ethernet.begin(mac) == 0) {
		Serial.println("\nNão foi possível configurar o Ethernet usando DHCP");
		if (gsm.begin(9600)) {
			Serial.println("\nConfigurando o GSM");
			isGSM = true;
			boolean isGPRSAttached = inet.attachGPRS(GSM_INTERNET_APN,
					GSM_INTERNET_USERNAME, GSM_INTERNET_PASSWORD);
			if (isGPRSAttached) {
				Serial.println("GSM Iniciado");
			} else {
				Serial.println("Erro ao iniciar o GSM");
				setup();
			}
			delay(1000);

		} else {
			Serial.println("Em espera");
		}
	} else {
		isEthernet = true;
		Serial.print("O meu endereço de IP é: ");
		Serial.println(Ethernet.localIP());
		if (gsm.isTurnOn()) {
			gsm.toggleOnOff();
		}

	}

}

void loop() {

	// Carrega se tiver a placa conectada
	if (isEthernet) {
		// Verifica se não há conexão com a internet mas se já foi conectado, se já foi entra no looping para parar o client
		if (!client.connected() && lastConnected) {
			Serial.println();
			Serial.println("Disconectando Ethernet");
			client.stop();
		}
		unsigned int currentTime = millis() - lastConnectionTime;
		if (!client.connected() && currentTime > postingInterval) {
			// Verifica conexão

			if (strcmp(token, "") == 0) {
				getToken();
			}else if(currentTime > atoi(expiresIn)){
				token = "";
			}

		}

		// Salva o status da conexão para a próxima iteração
		lastConnected = client.connected();
	}
}

// this method makes a HTTP connection to the server:
void httpRequest(char* path, boolean isBasicAuth, boolean isPost,
		String params) {

	if (client.connect(server, 80)) {
		Serial.println("Conectando Ethernet");
		if (isPost) {
			Serial.println("Post");
			client.print("POST ");
		} else {
			Serial.println("Get");
			client.print("GET ");
		}

		client.print(path);
		client.println(" HTTP/1.1");
		client.print("Host: ");
		client.println(server);
		client.println("User-Agent: HAAT-Hardware");

		if (isBasicAuth) {
			Serial.println("Basic Auth");
			client.print("Authorization: Basic ");
			client.println(BASIC_AUTH);
			client.println("Content-Type: application/x-www-form-urlencoded");
			client.print("Content-Length: ");
			client.println(OAUTH_TOKEN_HEADER.length());
			client.println();
			client.print(OAUTH_TOKEN_HEADER);
		}

		int interator = 0;
		Serial.println("Lendo retorno");
		memset(msg, 0, 50);
		delay(5000);
		while (client.connected() || client.available()) {
			int i = client.read();
			if (i == -1) {
				break;
			}

			msg[interator] = i;
			interator++;
			if (interator > 4000) {
				client.stop();
			}
			delay(1);
		}
		String data = msg;
		//Verificar o código hTTP
		String status = data.substring(data.indexOf("HTTP/1.1 ") + 9, data.indexOf("HTTP/1.1 ") + 12);
		Serial.println(status);
		//Pegar os dados
		if(status == "200"){
			data = data.substring(data.lastIndexOf("ab") + 2, data.lastIndexOf("0"));
			data.replace("\n", "");
			data.trim();
		}else{
			Serial.println(status);
			Serial.println("Erro ao pegar as informações do servidor");
		}

		//Atribuir o token
		StaticJsonDocument<400> doc;
		deserializeJson(doc, data);
		if (strcasecmp(path, "/rtim-haat/oauth/token")) {
			token = doc["access_token"];
			expiresIn = doc["expires_in"];
			Serial.println(token);
		}
		// Salva o tempo que a conexão foi feita
		lastConnectionTime = millis();
	} else {
		//Verficar quando tiver o CHIP
		Serial.println("Falha na conexão");
		client.stop();
		//Use GSM
		if (!isGSM && !isEthernet) {
			setup();
			// Verifica o endereço de ip
			Serial.println("Endereço de ip: ");
			gsm.SimpleWriteln("AT+CIFSR");

			Serial.println("Qualidade do sinal: ");
			gsm.SimpleWriteln("AT+CSQ");

			// Envia uma requisição para o servidor e salva a resposta
			if (isBasicAuth) {
				params = OAUTH_TOKEN_HEADER;
			}
			if (isPost) {
				numdata = inet.httpPOST(server, 80, path, params.c_str(), msg, 4000, BASIC_AUTH, isBasicAuth); // @suppress("Invalid arguments")
			} else {
				numdata = inet.httpGET(server, 80, path, msg, 4000,
						(char *) (isBasicAuth ? BASIC_AUTH : ""), isBasicAuth);
			}

			// Printa os resultados
			Serial.println("\nQuantidade de dados recebidos:");
			Serial.println(numdata);
			if (numdata == 0) {
				Serial.println("Falha na conexão GSM");
			} else {
				Serial.println("\nDados recebidos:");
				Serial.println(msg);
			}
		}

	}
}

void getToken() {

	httpRequest("/rtim-haat/oauth/token", true, true, "");
}
