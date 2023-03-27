USE carros;

-- Tabela de marcas de carros
CREATE TABLE marcas (
id INT NOT NULL AUTO_INCREMENT,
nome_marca VARCHAR(255) NOT NULL,
origem VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

-- Tabela de modelos de carros em estoque
CREATE TABLE inventario (
id INT NOT NULL AUTO_INCREMENT,
modelo VARCHAR(255) NOT NULL,
transmissao VARCHAR(255) NOT NULL,
motor VARCHAR(255) NOT NULL,
combustivel VARCHAR(255) NOT NULL,
marcas_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (marcas_id) REFERENCES marcas(id),
INDEX (marcas_id)
);

-- Tabela de clientes
CREATE TABLE clientes (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
sobrenome VARCHAR(255) NOT NULL,
endereco VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

-- Inserir alguns registros de clientes
INSERT INTO clientes (nome, sobrenome, endereco)
VALUES
('Lucas', 'Ramos', 'Rua 1'),
('Marcos', 'Souza', 'Rua 2'),
('Ana','Silva', 'Rua 3'),
('Daniela' , 'Pires', 'Rua 4'),
('Eduardo', 'Carvalho', 'Rua 5');

-- Inserir algumas marcas de carros
INSERT INTO marcas (nome_marca, origem)
VALUES
('BMW', 'Alemanha'),
('Fiat', 'Italia'),
('Mercedes-Benz', 'Alemanha'),
('Renault', 'Franca'),
('Jaguar', 'Inglaterra');

INSERT INTO inventario (modelo, transmissao, motor, combustivel, marcas_id)
VALUES
('Fiat Palio', 'Manual', '1.0', 'Gasolina', 2),
('Mercedes-Benz C180', 'Automática', '1.6', 'Gasolina', 3),
('Renault Sandero', 'Manual', '1.0', 'Flex', 4),
('BMW X3', 'Automática', '2.0', 'Diesel', 1),
('Jaguar F-Type', 'Automática', '3.0', 'Gasolina', 5);