DROP TABLE IF EXISTS temp_tables.auxTabela_1;

CREATE TABLE temp_tables.auxTabela_1 (
    cpf VARCHAR NOT NULL,
    name VARCHAR NOT NULL
);

INSERT INTO temp_tables.auxTabela_1
(cpf,name)

VALUES
('1','ALINE'),
('2','SANDRO'),
('3','CAIQUE'),
('4','ROSA'),
('5','PEDRO');
