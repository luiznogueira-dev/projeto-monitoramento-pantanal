USE monitoramento_pantanal;

-- Inserindo na tabela especies
INSERT INTO especies (nome_cientifico, nome_popular, tipo, em_extincao, descricao) VALUES
('Panthera onca', 'Onça-pintada', 'Fauna', TRUE, 'Maior felino das Américas, habita o Pantanal.'),
('Tabebuia impetiginosa', 'Ipê-roxo', 'Flora', FALSE, 'Árvore típica do bioma pantaneiro.'),
('Amazona aestiva', 'Papagaio-verdadeiro', 'Fauna', FALSE, 'Ave comum na região pantaneira.');

-- Inserindo na tabela localizacoes
INSERT INTO localizacoes (nome_local, latitude, longitude, descricao) VALUES
('Parque Estadual do Pantanal do Rio Negro', -19.295, -56.568, 'Área protegida de grande biodiversidade.'),
('Fazenda Esperança', -18.912, -57.150, 'Propriedade rural com projetos de preservação.'),
('Base de Monitoramento Sul', -19.450, -56.300, 'Base de operações da fiscalização ambiental.');

-- Inserindo na tabela agentes
INSERT INTO agentes (nome, matricula, email, telefone) VALUES
('Carlos Silva', 'AG001', 'carlos.silva@ambiental.ms.gov.br', '(67) 99999-1234'),
('Ana Souza', 'AG002', 'ana.souza@ambiental.ms.gov.br', '(67) 98888-5678');

-- Inserindo na tabela de monitoramentos
INSERT INTO monitoramentos (especie_id, localizacao_id, agente_id, data_registro, quantidade, observacoes) VALUES
(1, 1, 1, '2025-04-10', 2, 'Avistamento de duas onças próximas ao rio.'),
(2, 2, 2, '2025-04-15', 10, 'Florada intensa registrada.'),
(3, 3, 1, '2025-04-20', 5, 'Grupo de papagaios vocalizando próximo à base.');