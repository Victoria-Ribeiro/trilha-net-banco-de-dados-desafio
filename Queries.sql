--1
SELECT Nome, Ano FROM FILMES 

--2
SELECT Nome, Ano, Duracao FROM FILMES ORDER BY ANO

--3
SELECT Nome, Ano, Duracao FROM Filmes where Nome like 'de volta para o futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes where ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes where ano >= 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes where duracao > 100 AND duracao < 150 ORDER BY Duracao 

--7
SELECT Ano, COUNT(*) AS Quantidade, COUNT(Duracao) AS DURACAO FROM Filmes GROUP BY Ano ORDER BY DURACAO DESC

--8
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero like 'M'

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero like 'F' ORDER BY PrimeiroNome

--10
SELECT F.Nome, G.Genero FROM FilmesGenero FG
INNER JOIN Filmes F ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

--11
SELECT F.Nome, G.Genero FROM FilmesGenero FG
INNER JOIN Filmes F ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero like 'Mistério'

--12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM ElencoFilme EF
INNER JOIN Filmes F ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor
