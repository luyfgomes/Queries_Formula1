use db_formula_1;

create table paises(
codigo int primary key not null,
nome varchar(45));

create table equipes(
sigla varchar(3) primary key not null,
nome varchar(45) not null,
cod_pais int,
foreign key (cod_pais) references paises(codigo)
);

create table pilotos(
numero int primary key not null,
nome varchar(45),
cod_pais varchar(45) not null,
sigla_equipe varchar(3) not null,
foreign key (cod_pais) references paises(codigo),
foreign key (sigla_equipe) references equipes(sigla));

create table corridas(
sigla_gp varchar(5) primary key not null,
nome_gp varchar(45) not null,
cod_pais varchar(45) not null,
qtd_voltas int not null,
foreign key (cod_pais) references paises(codigo));

create table participantes(
sigla_gp varchar(5) not null,
num_piloto int not null,
posicao_largada int,
foreign key (sigla_gp) references corridas(sigla_gp),
foreign key (num_piloto) references pilotos(numero));

create table voltas(
num_volta int not null,
sigla_gp varchar(5) not null,
num_piloto int not null,
tempo time, 
foreign key (sigla_gp) references participantes(sigla_gp),
foreign key (num_piloto) references participantes(num_piloto));

create table resultados(
sigla_gp varchar(5) not null,
num_piloto int not null,
posicao_chegada int,
tempo_corrida time,
pontuacao int,
foreign key (sigla_gp) references participantes(sigla_gp),
foreign key (num_piloto) references participantes(num_piloto));

insert into participantes (sigla_gp, num_piloto, posicao_largada) values
('GPMON', 10, 1), ('GPMON', 77, 2), ('GPMON', 23, 3), ('GPMON', 3, 4), ('GPMON', 55, 5),
('GPMON', 44, 6), ('GPMON', 33, 7), ('GPMON', 27, 8), ('GPMON', 5, 9), ('GPMON', 26, 10),
('GPMON', 99, 11), ('GPMON', 18, 12), ('GPMON', 4, 13), ('GPMON', 7, 14), ('GPMON', 11, 15),
('GPMON', 8, 16), ('GPMON', 20, 17), ('GPMON', 63, 18), ('GPMON', 88, 19), ('GPMON', 16, 20);

insert into participantes (sigla_gp, num_piloto, posicao_largada) values
('GPAUS', 77, 1), ('GPAUS', 33, 2), ('GPAUS', 4, 3), ('GPAUS', 23, 4), ('GPAUS', 44, 5),
('GPAUS', 11, 6), ('GPAUS', 16, 7), ('GPAUS', 55, 8), ('GPAUS', 18, 9), ('GPAUS', 3, 10),
('GPAUS', 5, 11),  ('GPAUS', 10, 12), ('GPAUS', 26, 13), ('GPAUS', 31, 14),('GPAUS', 8, 15),
('GPAUS', 20, 16),('GPAUS', 63, 17),('GPAUS', 99, 18),('GPAUS', 7, 19),('GPAUS', 6, 20);


insert into participantes (sigla_gp, num_piloto, posicao_largada) values
('GPSTY', 8, 1), ('GPSTY', 33, 2), ('GPSTY', 23, 3), ('GPSTY', 5, 4), ('GPSTY', 55, 5),
('GPSTY', 44, 6), ('GPSTY', 77, 7), ('GPSTY', 27, 8), ('GPSTY', 3, 9), ('GPSTY', 26, 10),
('GPSTY', 99, 11), ('GPSTY', 20, 12), ('GPSTY', 63, 13), ('GPSTY', 7, 14), ('GPSTY', 11, 15),
('GPSTY', 10, 16), ('GPSTY', 18, 17), ('GPSTY', 4, 18), ('GPSTY', 88, 19), ('GPSTY', 16, 20);

insert into participantes (sigla_gp, num_piloto, posicao_largada) values
('GPHUN', 10, 1), ('GPHUN', 77, 2), ('GPHUN', 4, 3), ('GPHUN', 7, 4), ('GPHUN', 26, 5),
('GPHUN', 99, 6), ('GPHUN', 18, 7), ('GPHUN', 27, 8), ('GPHUN', 5, 9), ('GPHUN', 55, 10),
('GPHUN', 44, 11), ('GPHUN', 33, 12), ('GPHUN', 63, 13), ('GPHUN', 3, 14), ('GPHUN', 16, 15),
('GPHUN', 8, 16), ('GPHUN', 20, 17), ('GPHUN', 23, 18), ('GPHUN', 88, 19), ('GPHUN', 11, 20);

insert into participantes (sigla_gp, num_piloto, posicao_largada) values
('GPGBR', 20, 1), ('GPGBR', 23, 2), ('GPGBR', 77, 3), ('GPGBR', 55, 4), ('GPGBR', 3, 5),
('GPGBR', 44, 6), ('GPGBR', 33, 7), ('GPGBR', 27, 8), ('GPGBR', 5, 9), ('GPGBR', 26, 10),
('GPGBR', 18, 11), ('GPGBR', 99, 12), ('GPGBR', 4, 13), ('GPGBR', 7, 14), ('GPGBR', 11, 15),
('GPGBR', 8, 16), ('GPGBR', 10, 17), ('GPGBR', 63, 18), ('GPGBR', 88, 19), ('GPGBR', 16, 20);

insert into participantes (sigla_gp, num_piloto, posicao_largada) values
('GP70A', 16, 1), ('GP70A', 63, 2), ('GP70A', 23, 3), ('GP70A', 3, 4), ('GP70A', 8, 5),
('GP70A', 11, 6), ('GP70A', 33, 7), ('GP70A', 5, 8), ('GP70A', 27, 9), ('GP70A', 26, 10),
('GP70A', 99, 11), ('GP70A', 18, 12), ('GP70A', 4, 13), ('GP70A', 7, 14), ('GP70A', 44, 15),
('GP70A', 55, 16), ('GP70A', 20, 17), ('GP70A', 77, 18), ('GP70A', 88, 19), ('GP70A', 10, 20);

insert into participantes (sigla_gp, num_piloto, posicao_largada) values
('GPESP', 33, 1), ('GPESP', 44, 2), ('GPESP', 23, 3), ('GPESP', 3, 4), ('GPESP', 26, 5),
('GPESP', 77, 6), ('GPESP', 10, 7), ('GPESP', 27, 8), ('GPESP', 5, 9), ('GPESP', 55, 10),
('GPESP', 99, 11), ('GPESP', 4, 12), ('GPESP', 18, 13), ('GPESP', 7, 14), ('GPESP', 11, 15),
('GPESP', 8, 16), ('GPESP', 20, 17), ('GPESP', 88, 18), ('GPESP', 63, 19), ('GPESP', 16, 20);

insert into participantes (sigla_gp, num_piloto, posicao_largada) values
('GPBEL', 10, 1), ('GPBEL', 77, 2), ('GPBEL', 23, 3), ('GPBEL', 3, 4), ('GPBEL', 55, 5),
('GPBEL', 44, 6), ('GPBEL', 33, 7), ('GPBEL', 27, 8), ('GPBEL', 5, 9), ('GPBEL', 26, 10),
('GPBEL', 99, 11), ('GPBEL', 18, 12), ('GPBEL', 4, 13), ('GPBEL', 7, 14), ('GPBEL', 11, 15),
('GPBEL', 8, 16), ('GPBEL', 20, 17), ('GPBEL', 63, 18), ('GPBEL', 88, 19), ('GPBEL', 16, 20);

-- ------------------------------------------------------------------------------------------------------------------------------------------------
insert into voltas (sigla_gp, num_piloto, num_volta, tempo) values
('GPMON', 10, 72, '00:01:14.279'), ('GPMON', 77, 65, '00:01:15.163'), ('GPMON', 23, 43, '00:01:15.607'), ('GPMON', 3, 78, '00:01:15.697'),
('GPMON', 55, 32, '00:01:15.891'), ('GPMON', 44, 9, '00:01:16.167'), ('GPMON', 33, 9, '00:01:16.229'), ('GPMON', 27, 65, '00:01:16.276'),
('GPMON', 5, 9, '00:01:16.277'), ('GPMON', 26, 31, '00:01:16.288'), ('GPMON', 99, 46, '00:01:16.299'), ('GPMON', 18, 45, '00:01:16.379'),
('GPMON', 4, 61, '00:01:16.413'), ('GPMON', 7, 50, '00:01:16.436'), ('GPMON', 11, 67, '00:01:16.613'), ('GPMON', 8, 41, '00:01:16.746'),
('GPMON', 20, 61, '00:01:16.992'), ('GPMON', 63, 76, '00:01:17.038'), ('GPMON', 88, 32, '00:01:17.388'), ('GPMON', 16, 6, '00:01:19.151');

insert into voltas (sigla_gp, num_piloto, num_volta, tempo) values
('GPBEL',10,1,'00:01:17.388'),('GPBEL',77,1,'00:01:15.988'),('GPBEL',23,1,'00:01:12.388'),('GPBEL',3,1,'00:01:21.488'),('GPBEL',55,1,'00:01:12.388'),
('GPBEL',44,1,'00:01:17.488'),('GPBEL',33,1,'00:01:14.688'),('GPBEL',27,1,'00:01:11.088'),('GPBEL',5,1,'00:01:33.588'),('GPBEL',26,1,'00:01:21.388'),
('GPBEL',99,1,'00:01:17.688'),('GPBEL',18,1,'00:01:13.188'),('GPBEL',4,1,'00:01:18.398'),('GPBEL',7,1,'00:01:12.358'),('GPBEL',11,1,'00:01:34.388'),
('GPBEL',8,1,'00:01:14.399'),('GPBEL',20,1,'00:01:12.328'),('GPBEL',63,1,'00:01:19.908'),('GPBEL',88,1,'00:01:11.368'),('GPBEL',16,1,'00:01:45.388');

insert into voltas (sigla_gp, num_piloto, num_volta, tempo) values
('GPBEL',10,2,'00:01:15.388'),('GPBEL',77,2,'00:01:13.988'),('GPBEL',23,2,'00:01:10.388'),('GPBEL',3,2,'00:01:20.488'),('GPBEL',55,2,'00:01:11.388'),
('GPBEL',44,2,'00:01:18.488'),('GPBEL',33,2,'00:01:12.688'),('GPBEL',27,2,'00:01:10.088'),('GPBEL',5,2,'00:01:30.588'),('GPBEL',26,2,'00:01:23.388'),
('GPBEL',99,2,'00:01:18.688'),('GPBEL',18,2,'00:01:12.188'),('GPBEL',4,2,'00:01:17.398'),('GPBEL',7,2,'00:01:10.358'),('GPBEL',11,2,'00:01:33.388'),
('GPBEL',8,2,'00:01:11.399'),('GPBEL',20,2,'00:01:11.328'),('GPBEL',63,2,'00:01:18.908'),('GPBEL',88,2,'00:01:10.368'),('GPBEL',16,2,'00:01:44.388');

insert into voltas (sigla_gp, num_piloto, num_volta, tempo) values
('GPBEL',10,3,'00:01:16.388'),('GPBEL',77,3,'00:01:16.988'),('GPBEL',23,3,'00:01:13.388'),('GPBEL',3,3,'00:01:18.488'),('GPBEL',55,3,'00:01:10.388'),
('GPBEL',44,3,'00:01:16.488'),('GPBEL',33,3,'00:01:15.688'),('GPBEL',27,3,'00:01:14.088'),('GPBEL',5,3,'00:01:36.588'),('GPBEL',26,3,'00:01:20.388'),
('GPBEL',99,3,'00:01:16.688'),('GPBEL',18,3,'00:01:14.188'),('GPBEL',4,3,'00:01:19.398'),('GPBEL',7,3,'00:01:13.358'),('GPBEL',11,3,'00:01:30.388'),
('GPBEL',8,3,'00:01:15.399'),('GPBEL',20,3,'00:01:14.328'),('GPBEL',63,3,'00:01:18.908'),('GPBEL',88,3,'00:01:12.368'),('GPBEL',16,3,'00:01:40.388');

insert into voltas (sigla_gp, num_piloto, num_volta, tempo) values
('GPBEL',10,4,'00:01:17.388'),('GPBEL',77,4,'00:01:16.988'),('GPBEL',23,4,'00:01:17.388'),('GPBEL',3,4,'00:01:24.488'),('GPBEL',55,4,'00:01:13.388'),
('GPBEL',44,4,'00:01:14.488'),('GPBEL',33,4,'00:01:17.688'),('GPBEL',27,4,'00:01:17.088'),('GPBEL',5,4,'00:01:30.588'),('GPBEL',26,4,'00:01:23.388'),
('GPBEL',99,4,'00:01:13.688'),('GPBEL',18,4,'00:01:11.188'),('GPBEL',4,4,'00:01:16.398'),('GPBEL',7,4,'00:01:15.358'),('GPBEL',11,4,'00:01:35.388'),
('GPBEL',8,4,'00:01:13.399'),('GPBEL',20,4,'00:01:11.328'),('GPBEL',63,4,'00:01:18.908'),('GPBEL',88,4,'00:01:13.368'),('GPBEL',16,4,'00:01:46.388');

insert into voltas (sigla_gp, num_piloto, num_volta, tempo) values
('GPBEL',10,5,'00:01:18.388'),('GPBEL',77,5,'00:01:25.988'),('GPBEL',23,5,'00:01:16.388'),('GPBEL',3,5,'00:01:20.488'),('GPBEL',55,5,'00:01:10.388'),
('GPBEL',44,5,'00:01:17.488'),('GPBEL',33,5,'00:01:24.688'),('GPBEL',27,5,'00:01:17.088'),('GPBEL',5,5,'00:01:30.588'),('GPBEL',26,5,'00:01:20.388'),
('GPBEL',99,5,'00:01:16.688'),('GPBEL',18,5,'00:01:23.188'),('GPBEL',4,5,'00:01:18.398'),('GPBEL',7,5,'00:01:10.358'),('GPBEL',11,5,'00:01:30.388'),
('GPBEL',8,5,'00:01:11.399'),('GPBEL',20,5,'00:01:22.328'),('GPBEL',63,5,'00:01:19.908'),('GPBEL',88,5,'00:01:15.368'),('GPBEL',16,5,'00:01:40.388');

-- ------------------------------------------------------------------------------------------------------------------------------------------------

insert into resultados(sigla_gp, num_piloto, posicao_chegada, tempo_corrida, pontuacao) values
('GPBRA', 33, 1, '01:33:14.678', 25), ('GPBRA', 10, 2, '01:33:20.755', 18), ('GPBRA', 55, 3, '01:33:23.574', 15), ('GPBRA', 7, 4, '01:33:24.13', 12), 
('GPBRA', 99, 5, '01:33:24.879', 10), ('GPBRA', 3, 6, '01:33:25.219', 8), ('GPBRA', 44, 7, '01:33:25.817', 6), ('GPBRA', 4, 8, '01:33:25.882', 4),
('GPBRA', 11, 9, '01:33:26.207', 2), ('GPBRA', 26, 10, '01:33:26.609', 1), ('GPBRA', 20, 11, '01:33:27.41', 0),('GPBRA', 63, 12, '01:33:28.277', 0),
('GPBRA', 8, 13, '01:33:28.925', 0), ('GPBRA', 23, 14, '01:33:29.605', 0), ('GPBRA', 27, 15, '01:33:32.737', 0);

insert into resultados (sigla_gp, num_piloto, posicao_chegada) values 
('GPBRA', 88, 16), ('GPBRA', 5, 17), ('GPBRA', 16, 18),
('GPBRA', 18, 19), ('GPBRA', 77, 20);


insert into resultados(sigla_gp, num_piloto, posicao_chegada, tempo_corrida, pontuacao) values
('GPBEL', 44, 1, '01:24:08.761', 25), ('GPBEL', 77, 2, '01:24:17.209', 18), ('GPBEL', 33, 3, '01:24:24', 15), ('GPBEL', 3, 4, '01:24:27', 13), ('GPBEL', 31, 5, '01:24:49', 10),
('GPBEL', 23, 6, '01:24:51', 8), ('GPBEL', 4, 7, '01:24:52', 6), ('GPBEL', 10, 8, '01:24:56', 4), ('GPBEL', 18, 9, '01:25:01', 2), ('GPBEL', 11, 10, '01:25:02', 1),
('GPBEL', 26, 11, '01:26:11', 0), ('GPBEL', 7, 12, '01:26:12', 0), ('GPBEL', 5, 13, '01:26:13', 0), ('GPBEL', 16, 14, '01:26:15', 0), ('GPBEL', 8, 15, '01:26:18', 0),
('GPBEL', 6, 16, '01:26:19', 0), ('GPBEL', 20, 17, '01:26:27', 0), ('GPBEL', 99, 18, '02:26:12', 0), ('GPBEL', 63, 19, '02:27:12', 0), ('GPBEL', 55, 20, '02:36:12', 0);

-- ------------------------------------------------------------------------------------------------------------------------------------------------
 

insert into pilotos (numero, nome, cod_pais, sigla_equipe) values
(44, 'Lewis Hamilton', 238, 'AMG'), (77, 'Valtteri Bottas',75 ,'AMG'),
(33, 'Max Verstappen', 158, 'RBR'), (3, 'Daniel Ricciardo', 14, 'REN'),
(16, 'Charles Leclerc', 148,'FER'), (11, 'Sergio Perez', 145, 'BWT'), 
(4, 'Lando Norris', 238, 'MCL'), (55, 'Carlos Sainz', 212, 'MCL'), 
(23, 'Alexander Albon', 224, 'RBR'), (10, 'Pierre Gasly', 76,'ATH'), 
(18, 'Lance Stroll', 40, 'BWT'), (31, 'Esteban Ocon', 76, 'REN'), 
(26, 'Daniil Kvyat', 185, 'ATH'), (5, 'Sebastian Vettel', 83, 'FER'), 
(27, 'Nico Hulkenberg', 83, 'BWT'), (7, 'Kimi Räikkönen', 75, 'ARR'), 
(99, 'Antonio Giovinazzi', 110, 'ARR'), (8, 'Romain Grosjean', 76, 'HAA'), 
(20, 'Kevin Magnussen', 61, 'HAA'), (6, 'Nicholas Latifi', 40, 'WIL'), 
(63, 'George Russell', 238, 'WIL');

insert into corridas (sigla_gp, nome_gp, cod_pais, qtd_voltas) values
('GPAUS', 'Grand Prix Austria', 15, 71), ('GPSTY', 'Grand Prix Styria', 15, 71),
('GPHUN', 'Grand Prix Hungria', 101, 70), ('GPGBR', 'Grand Prix Grã-Bretanha', 238, 52),
('GP70A', 'Grand Prix 70th Anniversary', 238, 52), ('GPESP', 'Grand Prix Espanha', 212, 66),
('GPBEL', 'Grand Prix Belgica', 22, 44), ('GPITA', 'Grand Prix Italia', 110, 53),
('GPTOS', 'Grand Prix Toscana', 110, 59), ('GPRUS', 'Grand Prix Russia', 185, 53),
('GPEIF', 'Grand Prix Eifel', 83, 60), ('GPPOR', 'Grand Prix Portugal', 180, 66),
('GPERO', 'Grand Prix Emilia-Romanha', 110, 63), ('GPMON', 'Grand Prix Monaco', 148, 78),
('GPBRA', 'Grand Prix Brasil Interlagos', 32, 71);


insert into equipes (sigla, nome, cod_pais) values
('ARR', 'Alfa Romeo Racing', 219), ('ATH', 'AlphaTauri', 110),
('FER', 'Ferrari', 110), ('HAA', 'Haas', 239), ('MCL', 'McLaren', 238),
('AMG', 'Mercedes', 83), ('BWT', 'BWT Racing Point', 238),
('RBR', 'Red Bull Racing', 238), ('REN', 'Renault', 76), 
('WIL', 'Williams', 238);


-- ---------------------------------- Queries ----------------------------------
-- 1) O resultado final (posição de chegada, nome do piloto e tempo de prova) do GP de “Interlagos”
select resultados.posicao_chegada as 'Posição chegada', pilotos.nome as 'Piloto', resultados.tempo_corrida 'Tempo' 
from resultados
inner join pilotos on resultados.num_piloto = pilotos.numero;

-- 2) Qual o tempo da volta mais rápida do GP de Mônaco
select min(tempo) as 'Volta mais rápida' from voltas 
where sigla_gp = 'GPMON';

-- 3) Os nomes dos países e suas respectivas quantidades de pilotos, ordenados de forma decrescente pelas quantidades de pilotos
select paises.nome as 'País', count(pilotos.numero) as 'Quantidade de pilotos' from paises, pilotos
where paises.codigo = pilotos.cod_pais
group by paises.codigo 
order by (count(pilotos.numero)) desc;

-- 4) A classificação do Mundial de Construtores (nome da equipe e pontuação na temporada)
select equipes.nome as 'Equipe', sum(resultados.pontuacao) as 'Pontuação' from equipes, resultados
inner join pilotos on resultados.num_piloto = pilotos.numero
where equipes.sigla = pilotos.sigla_equipe
group by equipes.sigla
order by (sum(resultados.pontuacao)) desc;

-- 5) Os nomes dos GPs que tiveram ao menos uma volta abaixo de 1 min e 30 seg.
select distinct corridas.nome_gp as 'Grand Prix' from corridas
inner join voltas where corridas.sigla_gp = voltas.sigla_gp
and tempo < '00:01:30';

-- 6) O nome do piloto conseguiu o melhor tempo de volta em toda a temporada
select pilotos.nome as 'Piloto com a melhor volta' from pilotos
inner join voltas on pilotos.numero = voltas.num_piloto
having min(voltas.tempo);

-- 10) Nomes dos países e suas quantidades de pilotos, mas só daqueles que possuem corridas realizadas no país
select distinct paises.nome as 'País', (select count(pilotos.numero) from pilotos 
where pilotos.cod_pais = paises.codigo) as 'Quantidade de pilotos' from ((paises
inner join corridas on paises.codigo = corridas.cod_pais)
inner join pilotos on pilotos.cod_pais = corridas.cod_pais);

-- 15) Nomes das equipes que não tiveram pilotos chegando na última posição
select distinct equipes.nome as 'Equipes' from (((equipes
inner join pilotos on pilotos.sigla_equipe = equipes.sigla)
inner join participantes on participantes.num_piloto = pilotos.numero)
left outer join resultados on resultados.num_piloto = participantes.num_piloto
and resultados.posicao_chegada = 20);

-- 18) Nomes das corridas com seus respectivos valores de volta mais rápida, volta mais lenta, nome do vencedor
select corridas.nome_gp 'Grand Prix', (select max(voltas.tempo) 
from voltas where voltas.sigla_gp = corridas.sigla_gp) as 'Volta com maior tempo',
(select min(voltas.tempo) from voltas where voltas.sigla_gp = corridas.sigla_gp) as 'Volta com menor tempo', 
pilotos.nome as 'Piloto' from (((corridas
inner join participantes on participantes.sigla_gp = corridas.sigla_gp)
inner join resultados on resultados.num_piloto = participantes.num_piloto)
inner join pilotos on pilotos.numero = participantes.num_piloto
and resultados.posicao_chegada = 1)
where corridas.sigla_gp = resultados.sigla_gp;

-- 19) Nomes dos pilotos que venceram uma corrida e foram o último colocado em outra
select pilotos.nome from ((pilotos
inner join participantes on pilotos.numero = participantes.num_piloto)
inner join resultados on resultados.num_piloto = participantes.num_piloto
and resultados.posicao_chegada = 1 and 20);





insert into paises (codigo, nome) values
(1, 'Afghanistan'),
(2, 'Aland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua and Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bonaire, Sint Eustatius and Saba'),
(29, 'Bosnia and Herzegovina'),
(30, 'Botswana'),
(31, 'Bouvet Island'),
(32, 'Brazil'),
(33, 'British Indian Ocean Territory'),
(34, 'Brunei Darussalam'),
(35, 'Bulgaria'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Cambodia'),
(39, 'Cameroon'),
(40, 'Canada'),
(41, 'Cape Verde'),
(42, 'Cayman Islands'),
(43, 'Central African Republic'),
(44, 'Chad'),
(45, 'Chile'),
(46, 'China'),
(47, 'Christmas Island'),
(48, 'Cocos (Keeling) Islands'),
(49, 'Colombia'),
(50, 'Comoros'),
(51, 'Congo'),
(52, 'Congo, the Democratic Republic of the'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Cote D\'Ivoire'),
(56, 'Croatia'),
(57, 'Cuba'),
(58, 'Curacao'),
(59, 'Cyprus'),
(60, 'Czech Republic'),
(61, 'Denmark'),
(62, 'Djibouti'),
(63, 'Dominica'),
(64, 'Dominican Republic'),
(65, 'Ecuador'),
(66, 'Egypt'),
(67, 'El Salvador'),
(68, 'Equatorial Guinea'),
(69, 'Eritrea'),
(70, 'Estonia'),
(71, 'Ethiopia'),
(72, 'Falkland Islands (Malvinas)'),
(73, 'Faroe Islands'),
(74, 'Fiji'),
(75, 'Finland'),
(76, 'France'),
(77, 'French Guiana'),
(78, 'French Polynesia'),
(79, 'French Southern Territories'),
(80, 'Gabon'),
(81, 'Gambia'),
(82, 'Georgia'),
(83, 'Germany'),
(84, 'Ghana'),
(85, 'Gibraltar'),
(86, 'Greece'),
(87, 'Greenland'),
(88, 'Grenada'),
(89, 'Guadeloupe'),
(90, 'Guam'),
(91, 'Guatemala'),
(92, 'Guernsey'),
(93, 'Guinea'),
(94, 'Guinea-Bissau'),
(95, 'Guyana'),
(96, 'Haiti'),
(97, 'Heard Island and Mcdonald Islands'),
(98, 'Holy See (Vatican City State)'),
(99, 'Honduras'),
(100, 'Hong Kong'),
(101, 'Hungary'),
(102, 'Iceland'),
(103, 'India'),
(104, 'Indonesia'),
(105, 'Iran, Islamic Republic of'),
(106, 'Iraq'),
(107, 'Ireland'),
(108, 'Isle of Man'),
(109, 'Israel'),
(110, 'Italy'),
(111, 'Jamaica'),
(112, 'Japan'),
(113, 'Jersey'),
(114, 'Jordan'),
(115, 'Kazakhstan'),
(116, 'Kenya'),
(117, 'Kiribati'),
(118, 'Korea, Democratic People"s Republic of'),
(119, 'Korea, Republic of'),
(120, 'Kosovo'),
(121, 'Kuwait'),
(122, 'Kyrgyzstan'),
(123, 'Lao People\'s Democratic Republic'),
(124, 'Latvia'),
(125, 'Lebanon'),
(126, 'Lesotho'),
(127, 'Liberia'),
(128, 'Libyan Arab Jamahiriya'),
(129, 'Liechtenstein'),
(130, 'Lithuania'),
(131, 'Luxembourg'),
(132, 'Macao'),
(133, 'Macedonia, the Former Yugoslav Republic of'),
(134, 'Madagascar'),
(135, 'Malawi'),
(136, 'Malaysia'),
(137, 'Maldives'),
(138, 'Mali'),
(139, 'Malta'),
(140, 'Marshall Islands'),
(141, 'Martinique'),
(142, 'Mauritania'),
(143, 'Mauritius'),
(144, 'Mayotte'),
(145, 'Mexico'),
(146, 'Micronesia, Federated States of'),
(147, 'Moldova, Republic of'),
(148, 'Monaco'),
(149, 'Mongolia'),
(150, 'Montenegro'),
(151, 'Montserrat'),
(152, 'Morocco'),
(153, 'Mozambique'),
(154, 'Myanmar'),
(155, 'Namibia'),
(156, 'Nauru'),
(157, 'Nepal'),
(158, 'Netherlands'),
(159, 'Netherlands Antilles'),
(160, 'New Caledonia'),
(161, 'New Zealand'),
(162, 'Nicaragua'),
(163, 'Niger'),
(164, 'Nigeria'),
(165, 'Niue'),
(166, 'Norfolk Island'),
(167, 'Northern Mariana Islands'),
(168, 'Norway'),
(169, 'Oman'),
(170, 'Pakistan'),
(171, 'Palau'),
(172, 'Palestinian Territory, Occupied'),
(173, 'Panama'),
(174, 'Papua New Guinea'),
(175, 'Paraguay'),
(176, 'Peru'),
(177, 'Philippines'),
(178, 'Pitcairn'),
(179, 'Poland'),
(180, 'Portugal'),
(181, 'Puerto Rico'),
(182, 'Qatar'),
(183, 'Reunion'),
(184, 'Romania'),
(185, 'Russian Federation'),
(186, 'Rwanda'),
(187, 'Saint Barthelemy'),
(188, 'Saint Helena'),
(189, 'Saint Kitts and Nevis'),
(190, 'Saint Lucia'),
(191, 'Saint Martin'),
(192, 'Saint Pierre and Miquelon'),
(193, 'Saint Vincent and the Grenadines'),
(194, 'Samoa'),
(195, 'San Marino'),
(196, 'Sao Tome and Principe'),
(197, 'Saudi Arabia'),
(198, 'Senegal'),
(199, 'Serbia'),
(200, 'Serbia and Montenegro'),
(201, 'Seychelles'),
(202, 'Sierra Leone'),
(203, 'Singapore'),
(204, 'Sint Maarten'),
(205, 'Slovakia'),
(206, 'Slovenia'),
(207, 'Solomon Islands'),
(208, 'Somalia'),
(209, 'South Africa'),
(210, 'South Georgia and the South Sandwich Islands'),
(211, 'South Sudan'),
(212, 'Spain'),
(213, 'Sri Lanka'),
(214, 'Sudan'),
(215, 'Suriname'),
(216, 'Svalbard and Jan Mayen'),
(217, 'Swaziland'),
(218, 'Sweden'),
(219, 'Switzerland'),
(220, 'Syrian Arab Republic'),
(221, 'Taiwan, Province of China'),
(222, 'Tajikistan'),
(223, 'Tanzania, United Republic of'),
(224, 'Thailand'),
(225, 'Timor-Leste'),
(226, 'Togo'),
(227, 'Tokelau'),
(228, 'Tonga'),
(229, 'Trinidad and Tobago'),
(230, 'Tunisia'),
(231, 'Turkey'),
(232, 'Turkmenistan'),
(233, 'Turks and Caicos Islands'),
(234, 'Tuvalu'),
(235, 'Uganda'),
(236, 'Ukraine'),
(237, 'United Arab Emirates'),
(238, 'United Kingdom'),
(239, 'United States of America'),
(240, 'United States Minor Outlying Islands'),
(241, 'Uruguay'),
(242, 'Uzbekistan'),
(243, 'Vanuatu'),
(244, 'Venezuela'),
(245, 'Viet Nam'),
(246, 'Virgin Islands, British'),
(247, 'Virgin Islands, U.s.'),
(248, 'Wallis and Futuna'),
(249, 'Western Sahara'),
(250, 'Yemen'),
(251, 'Zambia'),
(252, 'Zimbabwe');
