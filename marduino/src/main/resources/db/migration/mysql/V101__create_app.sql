CREATE TABLE aparelho (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_user_ BIGINT NOT NULL,
    ds_aparelho VARCHAR(1024),
    CONSTRAINT fk_aparelho_user_ FOREIGN KEY (id_user_) REFERENCES user_(id)
);

CREATE TABLE evento (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  id_aparelho BIGINT NOT NULL,
  sensor VARCHAR(200),
  valor VARCHAR(200),
  nivel VARCHAR(50),
  dt_cadastro TIMESTAMP,
  CONSTRAINT fk_evento_aparelho FOREIGN KEY (id_aparelho) REFERENCES aparelho(ID)
);
