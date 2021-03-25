create database gym;
use gym;
-- drop database gym; --


create table Admin(
username varchar(50) primary key,
password varchar(50)
);

create table utente{
codf varchar(5) primary key,
nome varchar(50),
cognome varchar(50), 
telefono varchar(50), 
dataNascita date, 
username varchar(50) primary key,
email varchar(50),
password varchar(50), 
tipou varchar(1)

}

create table istruttore(
Ids varchar(5) primary key,
nome varchar(50),
cognome varchar(50),
telefono varchar(50),
sesso varchar(50),
dataNascita date
);


create table socio(
CodFiscale varchar(16) primary key,
nome varchar(50),
cognome varchar(50),
telefono varchar(50),
sesso varchar(50),
dataNascita date
);


create table corso(
NomeCorso varchar(50) primary key,
Prezzo int,
Descrizione varchar(100) default null

);


create table scheda(
IdScheda int primary key,
Ids varchar(5),
FOREIGN KEY (Ids) references istruttore(Ids),
CodFiscale varchar(16),
FOREIGN KEY (CodFiscale) references socio(CodFiscale)
);

create table abbonamento(
IdAbbonamento int primary key,
Inizio date,
fine date,
CodFiscale varchar(16),
FOREIGN KEY (CodFiscale) references socio(CodFiscale),
NomeCorso varchar(50),
stato varchar(1),
FOREIGN KEY (NomeCorso) references corso(NomeCorso)
);

create table allenamento(
IdAllenamento int primary key,
dataAllenamento date,
durata time,
NomeCorso varchar(50),
FOREIGN KEY (NomeCorso) references corso(NomeCorso),
Ids varchar (5),
FOREIGN KEY (Ids) references istruttore(Ids)
);


create table allena(
IdAllenamento int,
FOREIGN KEY (IdAllenamento) references allenamento(IdAllenamento),
CodFiscale varchar(16),
FOREIGN KEY (CodFiscale) references socio(CodFiscale)
);

insert into istruttore values ("IST1","FABIAN","NAPOLI","235235325","M","2002/01/01");
