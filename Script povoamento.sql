INSERT INTO energia_eletrica (preco_kwh) VALUES (0.80);

INSERT INTO gas (preco_gas, peso_gas) VALUES (120, 13);

INSERT INTO insumo (nome_insumo, volume_bruto, unidade_de_medida, custo_medio, custo_unitario) VALUES 
('Farinha de trigo', 1000, 'grama', 4.50, 0.0045),
('Açúcar', 1000, 'grama', 2.50, 0.0025),
('Leite', 1000, 'mililitro', 3.00, 0.003),
('Ovos', 1000, 'unidade', 15.00, 0.015),
('Chocolate em pó', 1000, 'grama', 8.50, 0.0085),
('Manteiga', 500, 'grama', 6.50, 0.013),
('Creme de leite', 500, 'mililitro', 4.50, 0.009),
('Fermento químico', 10, 'grama', 2.00, 0.20);

INSERT INTO receita_base (nome_receita_base, volume_bruto, custo_bruto, custo_unitario) VALUES 
('Bolo de chocolate', 2000, 50.00, 0.025),
('Bolo de cenoura', 2000, 45.00, 0.0225),
('Brigadeiro', 600, 15, 0.025);
INSERT INTO insumo_em_receita_base (quantidade_insumo, id_receita_base, id_insumo) VALUES 
(1000, 1, 1),
(500, 1, 2),
(1000, 1, 3),
(4, 1, 4),
(500, 2, 5),
(250, 2, 6),
(250, 2, 7),
(10, 2, 4);

INSERT INTO equipamento_eletrico (nome_equipamento, potencia_equipamento, unidade_potencia, gasto_por_minuto, id_energia_eletrica) VALUES 
('Forno elétrico', 2000, 'W', 0.033, 1),
('Batedeira', 800, 'W', 0.013, 1);

INSERT INTO equipamento_gas (nome_equipamento, vazao_equipamento, unidade_vazao, gasto_por_minuto, id_gas) VALUES
('Fogão a gás', 45, 'kgf', 0.45, 1);

INSERT INTO equipamento_eletrico_em_receita_base (tempo_em_minutos, id_equipamento_eletrico, id_energia_eletrica, id_receita_base) VALUES 
(60, 1, 1, 1),
(20, 2, 1, 2);

INSERT INTO equipamento_gas_em_receita_base(tempo_em_minutos, id_equipamento_gas, id_gas, id_receita_base) VALUES 
(25, 1, 1, 3);

INSERT INTO receita_final (nome_receita_final, volume_bruto, custo_bruto, rendimento, preco_venda_sugerido) VALUES
('Bolo de chocolate com brigadeiro', 1000, 100, 10, 250),
('Bolo de cenoura com brigadeiro', 1000, 150, 10, 300);

INSERT INTO receita_base_em_receita_final (id_receita_final, id_receita_base) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 3);

INSERT INTO embalagens (nome_embalagem, unidades_embalagem, preco_embalagem, custo_unitario) VALUES 
('Caixa para bolo 1', 1, 5.00, 5.00),
('Caixa para bolo 2', 1, 4.50, 4.50);

INSERT INTO embalagem_em_receita_final (id_receita_final, id_embalagens) VALUES 
(1, 1),
(2, 2);

INSERT INTO acessorios (nome_acessorio, quantidade_acessorio, unidade_de_medida, custo_acessorio, custo_unitario) VALUES 
('Papel manteiga', 1, 'unidade', 2.50, 2.50);

INSERT INTO acessorios_em_receita_final (id_acessorios, id_receita_final) VALUES 
(1, 1),
(1, 2);