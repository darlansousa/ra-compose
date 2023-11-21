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
