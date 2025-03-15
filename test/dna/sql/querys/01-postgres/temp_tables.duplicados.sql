DROP TABLE IF EXISTS temp_tables.duplicados;

CREATE TABLE temp_tables.duplicados (
    cpf VARCHAR NOT NULL,
    name VARCHAR NOT NULL,
    state VARCHAR NOT NULL
);
INSERT INTO temp_tables.duplicados
(cpf,name,state)

VALUES
('11111111111','KAMILA','MS'),
('11111111111','KAMILA','MT'),
('11111111111','KAMILA','SP'),
('22222222222','GUSTAVO','RJ'),
('22222222222','GUSTAVO','RJ'),
('22222222222','GUSTAVO','RJ'),
('33333333333','KAREN','SP'),
('33333333333','KAREN','SP'),
('33333333333','KAREN','RJ');
