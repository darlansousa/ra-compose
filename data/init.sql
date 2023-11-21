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

INSERT INTO `complainers` (`id`,`name`,`cpf`,`uc`,`city`,`email`,`phone`,`is_client`) VALUES (3,'R1','XXXXXXXXXXXX','','Belo Horizonte','X@gmail.com','31 CCCCC-XXXX','Sim');
INSERT INTO `complainers` (`id`,`name`,`cpf`,`uc`,`city`,`email`,`phone`,`is_client`) VALUES (4,'R2','XXXXXXXXXXXX','Piumhi-MG','Piumhi','XA@hotmail.com','37 CCCCC-CCCCC','Sim');
INSERT INTO `complainers` (`id`,`name`,`cpf`,`uc`,`city`,`email`,`phone`,`is_client`) VALUES (5,'R3','XXXXXXXXXXXX','30055901499288152','Belo Horizonte','XB@me.com','31 CCCC-CCC','Sim');
INSERT INTO `complaints` (`id`,`ra_cod`,`ra_id`,`title`,`date_description`,`chanel`,`reason`,`description`,`complainer_id`,`id_occurrence`,`close_date`,`system_sub_reason`,`complainer_note`,`complaints_status`,`ai_classification`,`negotiate_again`,`open_date`) VALUES (3,'XSDXD','1','Cancelamento','10/11/23 às 13h25','E-mail','Demora no retorno pelo e-mail ou telefone da empresa','Desde 25/10 estou aguardando retorno do time de cancelamento que solicitei. Até hj não tive retorno, nem o serviço.',3,'2681929295929295','2023-11-30 00:00:00','Economia','10','closed',NULL,'Sim',NULL);
INSERT INTO `complaints` (`id`,`ra_cod`,`ra_id`,`title`,`date_description`,`chanel`,`reason`,`description`,`complainer_id`,`id_occurrence`,`close_date`,`system_sub_reason`,`complainer_note`,`complaints_status`,`ai_classification`,`negotiate_again`,`open_date`) VALUES (4,'DDDDSEDC','2','Não consigo atendimento, o valor da conta só aumenta e o prazo para pagamento só diminui.','10/11/23 às 10h56','E-mail','Não tive economia','Não consigo atendimento, o valor da conta só aumenta e o prazo para pagamento só diminui, antem pagava todo dia 20',4,'984988952','2023-12-02 00:00:00','Economia','10','closed',NULL,'Não',NULL);
INSERT INTO `complaints` (`id`,`ra_cod`,`ra_id`,`title`,`date_description`,`chanel`,`reason`,`description`,`complainer_id`,`id_occurrence`,`close_date`,`system_sub_reason`,`complainer_note`,`complaints_status`,`ai_classification`,`negotiate_again`,`open_date`) VALUES (5,'DFFRESEDDDDD','3','Desorganização','10/11/23 às 10h44','Telefone','Demora no retorno pelo e-mail ou telefone da empresa','Recebi contato de oferta da Origo em novembro de 2022, mas somente em julho de 2023 que o serviço começou a ser prestado.\nDurante esses 8 meses de espera, tentei alguns contatos, sem nenhum retorno ou posicionamento efetivo, e tive a impressão de que o contrato não seria cumprido e que provavelmente teria sido cancelado.\nCom o serviço iniciado em julho de 2023, após 3 meses percebi que a suposta economia não estava sendo vantajosa, pelo contrário, tive a impressão de que a soma das contas de CEMIG e Origo ultrapassavam a média da Concessionária.\nFiz contato em 30 de outubro de 2023 para esclarecimentos e eventualmente solicitar o cancelamento da prestação de serviço, mas fui convencido a permanecer mediante um oferta de desconto maior.\nNeste último atendimento me informaram que a conta com vencimento em 10/11/2023 seria substituída por outra já com o valor corrigido, a ser enviada por email naquele mesmo dia.\nFiquei aguardando desde então e ainda não recebi a nova cobrança.\nEstou tentando contato por telefone e WhatsApp desde cedo e ainda não consegui ser atendido.\nPor telefone as posições de espera vão alterando regressivamente até que em determinado momento retorna para um numero maior na fila, quando então a ligação é encerrada. Já fiz 3 tentativas e em todas fiquei aguardando ser atendido por mais de 30 minutos - sem sucesso.\nPor whatsapp o atendimento é somente com Bots, sem interação com um humano.\nEspero que a Origo resolva essa questão rapidamente, e que melhore o SAC, caso contrário, não faz sentido manter o contrato.\nObrigado.',5,'15236592665','2023-11-13 00:00:00','Economia','10','closed',NULL,'Sim',NULL);
