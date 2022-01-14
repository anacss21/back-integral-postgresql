SELECT count(*) FROM farmacia; 
SELECT min(idade) FROM usuarios;
SELECT max(idade) FROM usuarios;
SELECT AVG(idade) FROM usuarios WHERE idade> 18;
SELECT categoria, sum(estoque) from farmacia WHERE categoria is NOT NULL GROUP BY categoria;
SELECT sum(estoque) from farmacia WHERE categoria is NULL or categoria='';
SELECT count(categoria) FROM farmacia WHERE categoria = 'black' OR categoria = 'blue';
SELECT concat(medicamento, '-',  categoria) AS juntos FROM farmacia WHERE categoria IS NOT NULL;
SELECT id || ' - ' || medicamento || ' ' || COALESCE ('(' || categoria || ')','(sem categoria) ') from farmacia
SELECT nome, idade, AGE(CAST(cadastro AS timestamp)) FROM usuarios;