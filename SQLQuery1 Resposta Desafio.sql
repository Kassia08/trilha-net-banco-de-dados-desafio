
--1 
SELECT 
	Nome,
	Ano
FROM Filmes

-- 2
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

-- 3
SELECT 
	Nome,
	Ano,
	Duracao
FROM FIlmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT 
	Nome,
	Ano,
	Duracao
FROM FIlmes
WHERE Ano = '1997'

--5
SELECT 
	Nome,
	Ano,
	Duracao
FROM FIlmes
WHERE Ano > '2000'

--6
SELECT 
	Nome,
	Ano,
	Duracao
FROM FIlmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7
SELECT 
	Ano,
	COUNT(*) Quantidade
FROM FIlmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT * FROM Atores
WHERE Genero = 'M'

--9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT * FROM Filmes
SELECT * FROM Generos
SELECT * FROM FilmesGenero

SELECT 
	Filmes.Nome,
	Generos.Genero
FROM 
	FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11 
SELECT * FROM Filmes
SELECT * FROM Generos
SELECT * FROM FilmesGenero


SELECT 
	Filmes.Nome,
	Generos.Genero
FROM 
	FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'mistério'

--12
SELECT * FROM Filmes
SELECT * FROM ElencoFilme
SELECT * FROM Atores

SELECT 
	Filmes.Nome, 
	Atores.PrimeiroNome, 
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM 
	Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor