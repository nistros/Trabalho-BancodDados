
USE sistema_jogos;
SELECT forma_pagamento, COUNT(*) AS total
FROM Compra
GROUP BY forma_pagamento;

SELECT j.nome_jogador, g.nome_jogo, c.data_compra, c.forma_pagamento
FROM Compra c
JOIN Jogador j ON c.id_jogador = j.id_jogador
JOIN Jogo g ON c.id_jogo = g.id_jogo
WHERE c.id_compra = 5;

SELECT nome_jogo
FROM Jogo
WHERE genero_jogo = 'Ação';

SELECT *
FROM Compra
WHERE data_compra >= CURDATE() - INTERVAL 30 DAY;

SELECT j.nome_jogador
FROM Jogador j
LEFT JOIN Compra c ON j.id_jogador = c.id_jogador
WHERE c.id_compra IS NULL;

SELECT nome_jogo
FROM Jogo
WHERE nome_jogo LIKE "J";