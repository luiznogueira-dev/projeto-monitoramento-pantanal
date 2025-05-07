-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS monitoramento_pantanal;
USE monitoramento_pantanal;

-- Criação da tabela de espécies
CREATE TABLE especies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_cientifico VARCHAR(255) NOT NULL,
    nome_popular VARCHAR(255),
    tipo ENUM('Fauna', 'Flora') NOT NULL,
    em_extincao BOOLEAN DEFAULT FALSE,
    descricao TEXT
);

-- Criação da tabela de localizações
CREATE TABLE localizacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_local VARCHAR(255) NOT NULL,
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    descricao TEXT
);

-- Criação da tabela de agentes ambientais
CREATE TABLE agentes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    matricula VARCHAR(100) UNIQUE NOT NULL,
    email VARCHAR(255),
    telefone VARCHAR(20)
);

-- Criação da tabela de registros de monitoramento
CREATE TABLE monitoramentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    especie_id INT NOT NULL,
    localizacao_id INT NOT NULL,
    agente_id INT NOT NULL,
    data_registro DATE NOT NULL,
    quantidade INT,
    observacoes TEXT,
    FOREIGN KEY (especie_id) REFERENCES especies(id),
    FOREIGN KEY (localizacao_id) REFERENCES localizacoes(id),
    FOREIGN KEY (agente_id) REFERENCES agentes(id)
);
