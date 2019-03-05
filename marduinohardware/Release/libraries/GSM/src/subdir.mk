################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
..\libraries\GSM\src\GSM.cpp \
..\libraries\GSM\src\HWSerial.cpp \
..\libraries\GSM\src\LOG.cpp \
..\libraries\GSM\src\SIM900.cpp \
..\libraries\GSM\src\WideTextFinder.cpp \
..\libraries\GSM\src\call.cpp \
..\libraries\GSM\src\gps.cpp \
..\libraries\GSM\src\inetGSM.cpp \
..\libraries\GSM\src\sms.cpp 

LINK_OBJ += \
.\libraries\GSM\src\GSM.cpp.o \
.\libraries\GSM\src\HWSerial.cpp.o \
.\libraries\GSM\src\LOG.cpp.o \
.\libraries\GSM\src\SIM900.cpp.o \
.\libraries\GSM\src\WideTextFinder.cpp.o \
.\libraries\GSM\src\call.cpp.o \
.\libraries\GSM\src\gps.cpp.o \
.\libraries\GSM\src\inetGSM.cpp.o \
.\libraries\GSM\src\sms.cpp.o 

CPP_DEPS += \
.\libraries\GSM\src\GSM.cpp.d \
.\libraries\GSM\src\HWSerial.cpp.d \
.\libraries\GSM\src\LOG.cpp.d \
.\libraries\GSM\src\SIM900.cpp.d \
.\libraries\GSM\src\WideTextFinder.cpp.d \
.\libraries\GSM\src\call.cpp.d \
.\libraries\GSM\src\gps.cpp.d \
.\libraries\GSM\src\inetGSM.cpp.d \
.\libraries\GSM\src\sms.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\GSM\src\GSM.cpp.o: ..\libraries\GSM\src\GSM.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\mega" -I"C:\sloeber\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SPI\src" -I"D:\projetos\marduinohardware\libraries\GSM\src" -I"D:\projetos\marduinohardware\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\GSM\src\HWSerial.cpp.o: ..\libraries\GSM\src\HWSerial.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\mega" -I"C:\sloeber\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SPI\src" -I"D:\projetos\marduinohardware\libraries\GSM\src" -I"D:\projetos\marduinohardware\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\GSM\src\LOG.cpp.o: ..\libraries\GSM\src\LOG.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\mega" -I"C:\sloeber\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SPI\src" -I"D:\projetos\marduinohardware\libraries\GSM\src" -I"D:\projetos\marduinohardware\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\GSM\src\SIM900.cpp.o: ..\libraries\GSM\src\SIM900.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\mega" -I"C:\sloeber\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SPI\src" -I"D:\projetos\marduinohardware\libraries\GSM\src" -I"D:\projetos\marduinohardware\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\GSM\src\WideTextFinder.cpp.o: ..\libraries\GSM\src\WideTextFinder.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\mega" -I"C:\sloeber\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SPI\src" -I"D:\projetos\marduinohardware\libraries\GSM\src" -I"D:\projetos\marduinohardware\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\GSM\src\call.cpp.o: ..\libraries\GSM\src\call.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\mega" -I"C:\sloeber\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SPI\src" -I"D:\projetos\marduinohardware\libraries\GSM\src" -I"D:\projetos\marduinohardware\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\GSM\src\gps.cpp.o: ..\libraries\GSM\src\gps.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\mega" -I"C:\sloeber\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SPI\src" -I"D:\projetos\marduinohardware\libraries\GSM\src" -I"D:\projetos\marduinohardware\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\GSM\src\inetGSM.cpp.o: ..\libraries\GSM\src\inetGSM.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\mega" -I"C:\sloeber\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SPI\src" -I"D:\projetos\marduinohardware\libraries\GSM\src" -I"D:\projetos\marduinohardware\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\GSM\src\sms.cpp.o: ..\libraries\GSM\src\sms.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\mega" -I"C:\sloeber\arduinoPlugin\libraries\Ethernet\2.0.0\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"C:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SPI\src" -I"D:\projetos\marduinohardware\libraries\GSM\src" -I"D:\projetos\marduinohardware\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


