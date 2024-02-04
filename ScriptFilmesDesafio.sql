------Filmes--------

select Nome,Ano from filmes

select Nome,Ano from filmes
order by Ano

select Nome,Ano,Duracao from filmes
where Nome like '%De volta para o futuro%'

select Nome,Ano,Duracao from filmes
where Ano = 1997

select Nome,Ano,Duracao from filmes
where Ano > 2000

select Nome,Ano,Duracao from filmes
where Duracao > 100 and Duracao < 150
order by Duracao asc

select Ano,count(Duracao) as Quantidade from filmes
group by Ano
order by Quantidade desc

------Atores--------

select PrimeiroNome,UltimoNome,Genero from Atores
where Genero = 'M'

select PrimeiroNome,UltimoNome,Genero from Atores
where Genero = 'F'
Order by PrimeiroNome

------Filmes,Genero--------

select f.Nome,g.Genero from filmes f
inner join FilmesGenero fg on f.id = fg.IdFilme
inner join Generos g on g.Id = fg.IdGenero

select f.Nome,g.Genero from filmes f
inner join FilmesGenero fg on f.id = fg.IdFilme
inner join Generos g on g.Id = fg.IdGenero
where g.Genero = 'Mistério'

------Filmes,Atores--------

select f.Nome,a.PrimeiroNome,a.UltimoNome,ef.Papel from filmes f
inner join ElencoFilme ef on ef.IdFilme = f.id
inner join Atores a on a.Id = ef.IdAtor
