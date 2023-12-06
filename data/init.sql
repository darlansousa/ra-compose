CREATE DATABASE IF NOT EXISTS ra_collector;
USE ra_collector;

CREATE TABLE IF NOT EXISTS complainers (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    cpf VARCHAR(255),
    uc VARCHAR(255),
    city VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255),
    is_client VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS complaints (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    ra_cod VARCHAR(255),
    ra_id VARCHAR(255),
    title VARCHAR(255),
    date_description VARCHAR(255),
    chanel VARCHAR(255),
    reason VARCHAR(255),
    description TEXT,
    complainer_id BIGINT,
    id_occurrence VARCHAR(16) NULL,
    close_date DATETIME NULL,
    open_date DATETIME NULL,
    system_sub_reason VARCHAR(100) NULL,
    complainer_note VARCHAR(16) NULL,
    complaints_status VARCHAR(16) NULL,
    ai_classification VARCHAR(255) NULL,
    negotiate_again VARCHAR(10) NULL,
    FOREIGN KEY (complainer_id) REFERENCES complainers(id)
);

CREATE TABLE IF NOT EXISTS complaints_process(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    ra_cod VARCHAR(255),
    link VARCHAR(500),
    status VARCHAR(15)
);

DROP TABLE complaints_classifications;

CREATE TABLE IF NOT EXISTS complaints_classifications(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255)
);

INSERT INTO complaints_classifications(description) VALUES('Economia');
INSERT INTO complaints_classifications(description) VALUES('Consumo - Baixa injeção');
INSERT INTO complaints_classifications(description) VALUES('Multa/Cancelamento');
INSERT INTO complaints_classifications(description) VALUES('Atendimento');
INSERT INTO complaints_classifications(description) VALUES('Inconsistência na venda');
INSERT INTO complaints_classifications(description) VALUES('Portal/App');
INSERT INTO complaints_classifications(description) VALUES('Points');
INSERT INTO complaints_classifications(description) VALUES('Cobrança indevida');
INSERT INTO complaints_classifications(description) VALUES('Prazo conexão');
INSERT INTO complaints_classifications(description) VALUES('Outros');


CREATE TABLE IF NOT EXISTS complaints_export_process(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    ra_id VARCHAR(255) NOT NULL,
    export_date DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS complaints_analysis (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    month_desc  VARCHAR(100),
    month INT,
    year INT, 
    ra_id VARCHAR(255),
    chanel VARCHAR(255),
    reason VARCHAR(255),
    close_date DATETIME NULL,
    open_date DATETIME NULL,
    service_time INT, 
    system_sub_reason VARCHAR(100) NULL,
	complaints_status VARCHAR(16) NULL,
    ai_classification VARCHAR(255) NULL,
    complaint_precedes VARCHAR(100) NULL,
    recurring_problem VARCHAR(255) NULL,
	complainer_name VARCHAR(255),
    complainer_city VARCHAR(255),
    complainer_state VARCHAR(255),
    complainer_origin VARCHAR(255),
	complainer_voice VARCHAR(100),
    complainer_is_client VARCHAR(10),
    complainer_note VARCHAR(16) NULL,
    complainer_nps_dsc VARCHAR(16) NULL,
    complainer_negotiate_again VARCHAR(100) NULL
);

