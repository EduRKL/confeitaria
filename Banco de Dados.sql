DROP DATABASE confeitaria_bd;

CREATE DATABASE confeitaria_bd;

USE confeitaria_bd;

CREATE TABLE energia_eletrica (
id_energia_eletrica INT NOT NULL AUTO_INCREMENT,
preco_kwh DOUBLE,
PRIMARY KEY (id_energia_eletrica)
);

CREATE TABLE equipamento_eletrico (
id_equipamento_eletrico INT NOT NULL AUTO_INCREMENT,
nome_equipamento VARCHAR(100),
potencia_equipamento INT,
unidade_potencia VARCHAR(45),
gasto_por_minuto DECIMAL(7,2),
id_energia_eletrica INT,
PRIMARY KEY (id_equipamento_eletrico),
FOREIGN KEY (id_energia_eletrica) REFERENCES energia_eletrica (id_energia_eletrica)
);

CREATE TABLE gas (
id_gas INT NOT NULL AUTO_INCREMENT,
preco_gas DECIMAL (7,2),
peso_gas INT,
PRIMARY KEY (id_gas)
);

CREATE TABLE equipamento_gas (
id_equipamento_gas INT NOT NULL AUTO_INCREMENT,
nome_equipamento VARCHAR(100),
vazao_equipamento INT,
unidade_vazao VARCHAR(45),
gasto_por_minuto DECIMAL(7,2),
id_gas INT,
PRIMARY KEY (id_equipamento_gas),
FOREIGN KEY (id_gas) REFERENCES gas (id_gas) 
); 

CREATE TABLE insumo (
id_insumo INT NOT NULL AUTO_INCREMENT,
nome_insumo VARCHAR(100),
volume_bruto DOUBLE,
unidade_de_medida VARCHAR(45),
custo_medio DECIMAL (7,2),
custo_unitario DECIMAL (7,2),
PRIMARY KEY (id_insumo)
);

CREATE TABLE receita_base(
id_receita_base INT NOT NULL AUTO_INCREMENT,
nome_receita_base VARCHAR(100),
volume_bruto DOUBLE,
custo_bruto DECIMAL,
custo_unitario DECIMAL,
PRIMARY KEY (id_receita_base)
);

CREATE TABLE insumo_em_receita_base(
id_insumo_em_receita_base INT NOT NULL AUTO_INCREMENT,
quantidade_insumo DOUBLE,
id_receita_base INT,
id_insumo INT,
PRIMARY KEY (id_insumo_em_receita_base),
FOREIGN KEY (id_receita_base) REFERENCES receita_base (id_receita_base), 
FOREIGN KEY (id_insumo) REFERENCES insumo (id_insumo) 
);

CREATE TABLE equipamento_eletrico_em_receita_base(
id_equipamento_eletrico_em_receita_base INT NOT NULL AUTO_INCREMENT,
tempo_em_minutos DOUBLE,
id_equipamento_eletrico INT,
id_energia_eletrica INT,
id_receita_base INT,
PRIMARY KEY (id_equipamento_eletrico_em_receita_base),
FOREIGN KEY (id_equipamento_eletrico) REFERENCES equipamento_eletrico (id_equipamento_eletrico), 
FOREIGN KEY (id_energia_eletrica) REFERENCES equipamento_eletrico (id_energia_eletrica),
FOREIGN KEY (id_receita_base) REFERENCES receita_base (id_receita_base)
);

CREATE TABLE equipamento_gas_em_receita_base(
id_equipamento_gas_em_receita_base INT NOT NULL AUTO_INCREMENT,
tempo_em_minutos DOUBLE,
id_equipamento_gas INT,
id_gas INT,
id_receita_base INT,
PRIMARY KEY (id_equipamento_gas_em_receita_base),
FOREIGN KEY (id_equipamento_gas) REFERENCES equipamento_gas (id_equipamento_gas), 
FOREIGN KEY (id_gas) REFERENCES equipamento_gas (id_gas),
FOREIGN KEY (id_receita_base) REFERENCES receita_base (id_receita_base)
);


