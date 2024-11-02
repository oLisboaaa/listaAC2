INSERT INTO cliente (rg, nome, endereco, bairro, cidade, estado, telefone, email, datanascimento, sexo) VALUES ('222123234', 'Dino da Silva Sauro', 'Rua Joaquim Silveira, 34', 'Jd. Romano', 'São Roque', 'SP', NULL, NULL, NULL, 'M');
-- ------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO filme (filme, cod_categoria, diretor, valor_locacao, reservada) VALUES ('Missão Impossível 3', 1, 'J.J. Abrams', 7.00, 'n');
-- ------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO locacao (cod_cliente, cod_filme, data_retirada, data_devolucao) VALUES ((SELECT cod_cliente FROM cliente WHERE nome = 'Dino da Silva Sauro'), (SELECT cod_filme FROM filme WHERE filme = 'Amadeus'), NOW(), NULL);
INSERT INTO locacao (cod_cliente, cod_filme, data_retirada, data_devolucao) VALUES ((SELECT cod_cliente FROM cliente WHERE nome = 'Dino da Silva Sauro'), (SELECT cod_filme FROM filme WHERE filme = 'Constantine'), NOW(), NULL);
INSERT INTO locacao (cod_cliente, cod_filme, data_retirada, data_devolucao) VALUES ((SELECT cod_cliente FROM cliente WHERE nome = 'Dino da Silva Sauro'), (SELECT cod_filme FROM filme WHERE filme = 'Missão Impossível 3'), NOW(), NULL);

-- ------------------------------------------------------------------------------------------------------------------------------------
UPDATE categoria 
SET nome_categoria = 'Animação' 
WHERE nome_categoria = 'Desenho';
-- ------------------------------------------------------------------------------------------------------------------------------------
UPDATE filme 
SET reservada = 's' 
WHERE diretor = 'Terry Gilliam';
-- ------------------------------------------------------------------------------------------------------------------------------------
UPDATE cliente 
SET endereco = 'Rua Guilherme Orlando, 333', telefone = '1532145543' 
WHERE nome = 'Rafael Nunes Sales';
-- ------------------------------------------------------------------------------------------------------------------------------------
UPDATE categoria 
SET nome_categoria = UPPER(nome_categoria);
-- ------------------------------------------------------------------------------------------------------------------------------------
UPDATE filme 
SET valor_locacao = valor_locacao * 0.5 
WHERE filme IN ('A Mexicana', 'A Verdade Nua e Crua', 'Austrália');
-- ------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM categoria 
WHERE cod_categoria NOT IN (SELECT DISTINCT cod_categoria FROM filme);
-- ------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO cliente (rg, nome, endereco, bairro, cidade, estado, telefone, email, datanascimento, sexo) VALUES ('503342105', 'Marcelo Lisboa', 'Rua dos Bobos', 'Vila Barão', 'Sorocaba', 'São Paulo', '1540028922', '248347@facens.br', '2005-06-03 00:00:00.000', 'M');
-- ------------------------------------------------------------------------------------------------------------------------------------
