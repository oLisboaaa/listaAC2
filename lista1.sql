SELECT cod_filme, COUNT(*) AS quantidade_alugados
FROM locacao
GROUP BY cod_filme;
-- -----------------------------------------------------------------------------------------------------------
SELECT f.filme, l.data_devolucao
FROM locacao l
JOIN filme f ON l.cod_filme = f.cod_filme
JOIN cliente c ON l.cod_cliente = c.cod_cliente
JOIN categoria cat ON f.cod_categoria = cat.cod_categoria
WHERE c.nome = 'Abimael Silva' AND cat.nome_categoria = 'Ação' AND f.diretor = 'Richard Donner';
-- -----------------------------------------------------------------------------------------------------------
SELECT filme, valor_locacao,
       valor_locacao * 0.10 AS desconto,
       valor_locacao - (valor_locacao * 0.10) AS valor_final
FROM filme;
-- -----------------------------------------------------------------------------------------------------------
SELECT DISTINCT f.filme
FROM locacao l
JOIN cliente c ON l.cod_cliente = c.cod_cliente
JOIN filme f ON l.cod_filme = f.cod_filme
WHERE c.cidade = 'Votorantim';
-- -----------------------------------------------------------------------------------------------------------    
SELECT f.filme
FROM locacao l
JOIN filme f ON l.cod_filme = f.cod_filme
ORDER BY l.data_retirada DESC
LIMIT 1;
-- -----------------------------------------------------------------------------------------------------------
SELECT SUM(f.valor_locacao) AS lucro
FROM locacao l
JOIN filme f ON l.cod_filme = f.cod_filme
WHERE f.filme = 'A vida é bela';
-- -----------------------------------------------------------------------------------------------------------
SELECT f.diretor, COUNT(*) AS quantidade_saida
FROM locacao l
JOIN filme f ON l.cod_filme = f.cod_filme
GROUP BY f.diretor;
-- -----------------------------------------------------------------------------------------------------------
SELECT DISTINCT cat.nome_categoria
FROM locacao l
JOIN cliente c ON l.cod_cliente = c.cod_cliente
JOIN filme f ON l.cod_filme = f.cod_filme
JOIN categoria cat ON f.cod_categoria = cat.cod_categoria
WHERE c.nome = 'Maria Chiquinha';
-- -----------------------------------------------------------------------------------------------------------
SELECT c.nome, c.telefone
FROM locacao l
JOIN cliente c ON l.cod_cliente = c.cod_cliente
JOIN filme f ON l.cod_filme = f.cod_filme
WHERE f.filme = 'Constantine';
-- -----------------------------------------------------------------------------------------------------------
SELECT cat.nome_categoria
FROM categoria cat
LEFT JOIN filme f ON cat.cod_categoria = f.cod_categoria
WHERE f.cod_filme IS NULL;
		
