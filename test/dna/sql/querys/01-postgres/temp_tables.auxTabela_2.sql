DROP TABLE IF EXISTS temp_tables.auxTabela_2;

CREATE TABLE temp_tables.auxTabela_2 (
    cpf VARCHAR NOT NULL,
    state VARCHAR NOT NULL
);


INSERT INTO temp_tables.auxTabela_2
(cpf,state)

VALUES
('1','SP'),
('3','RJ'),
('4','MS'),
('6','MT'),
('7','GO');
