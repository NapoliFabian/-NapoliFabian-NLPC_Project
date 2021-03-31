create database gym;
use gym;
-- drop database gym; --
create table utente(
codf varchar(16) primary key,
nome varchar(50),
cognome varchar(50),
telefono varchar(50),
sesso varchar(50),
dataNascita date,
username varchar(50),
email varchar(50),
password varchar(50),
tipou varchar(1)
);

create table corso(
NomeCorso varchar(50) primary key,
Prezzo int,
Descrizione varchar(100) default null
);


create table scheda(
IdScheda int auto_increment key,
codf varchar(16),
FOREIGN KEY (codf) references utente(codf),
CodFiscale varchar(16),
FOREIGN KEY (codf) references utente(codf)
);

create table abbonamento(
IdAbbonamento int auto_increment primary key,
Inizio date,
fine date,
codf varchar(16),
FOREIGN KEY (codf) references utente(codf),
NomeCorso varchar(50),
stato varchar(1),
FOREIGN KEY (NomeCorso) references corso(NomeCorso)
);

create table allenamento(
IdAllenamento int auto_increment primary key,
dataAllenamento date,
durata time,
NomeCorso varchar(50),
FOREIGN KEY (NomeCorso) references corso(NomeCorso),
codf varchar (16),
FOREIGN KEY (codf) references utente(codf)
);

-- insert into utente values ("IST1","FABIAN","NAPOLI","235235325","M","2002/01/01");
insert into utente values("2"," "," "," "," "," ","admin","","root","A");