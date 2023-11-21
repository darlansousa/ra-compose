ALTER TABLE complaints ADD COLUMN id_occurrence VARCHAR(16) NULL;
ALTER TABLE complaints ADD COLUMN close_date DATETIME NULL;
ALTER TABLE complaints ADD COLUMN open_date DATETIME NULL;
ALTER TABLE complaints ADD COLUMN system_sub_reason VARCHAR(100) NULL;
ALTER TABLE complaints ADD COLUMN complainer_note VARCHAR(16) NULL;
ALTER TABLE complaints ADD COLUMN complaints_status VARCHAR(16) NULL;
ALTER TABLE complaints ADD COLUMN ai_classification VARCHAR(255) NULL;
ALTER TABLE complaints ADD COLUMN negotiate_again VARCHAR(10) NULL;

