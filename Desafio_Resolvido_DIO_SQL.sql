use Filmes
--1
SELECT f.Nome, f.Ano FROM Filmes f;

--2
SELECT * FROM Filmes f 
ORDER BY f.Ano;

--3
SELECT * FROM Filmes f
WHERE f.Nome = 'De Volta para o Futuro';

--4
SELECT * FROM Filmes f
WHERE f.Ano = 1997;

--5
SELECT * FROM Filmes f
WHERE f.Ano > 2000;

--6
SELECT * FROM Filmes f
WHERE f.Duracao > 100 and f.Duracao < 150
ORDER BY f.Duracao;

--7
SELECT f.Ano, COUNT(f.Ano) AS Quantidade FROM Filmes f
GROUP BY f.Ano
ORDER BY Quantidade DESC

--8
SELECT * FROM Atores a
WHERE a.Genero = 'M'

--9
SELECT * FROM Atores a
WHERE a.Genero = 'F'
ORDER BY a.PrimeiroNome

--10
SELECT f.Nome, g.Genero FROM FilmesGenero fg
JOIN Generos g on fg.IdGenero = g.Id
JOIN Filmes f on fg.IdFilme = f.Id

--11
SELECT f.Nome, g.Genero FROM FilmesGenero fg
JOIN Generos g on fg.IdGenero = g.Id
JOIN Filmes f on fg.IdFilme = f.Id
WHERE g.Genero = 'Mistério'

--12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM ElencoFilme ef
JOIN Filmes f on ef.IdFilme = f.Id
JOIN Atores a on ef.IdAtor = a.Id


