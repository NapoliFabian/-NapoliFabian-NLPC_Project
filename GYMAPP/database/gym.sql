-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 28, 2021 alle 10:22
-- Versione del server: 10.4.17-MariaDB
-- Versione PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `abbonamento`
--

CREATE TABLE `abbonamento` (
  `IdAbbonamento` int(11) NOT NULL,
  `Inizio` date DEFAULT NULL,
  `fine` date DEFAULT NULL,
  `codf` varchar(16) DEFAULT NULL,
  `NomeCorso` varchar(50) DEFAULT NULL,
  `stato` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `abbonamento`
--

INSERT INTO `abbonamento` (`IdAbbonamento`, `Inizio`, `fine`, `codf`, `NomeCorso`, `stato`) VALUES
(1, '2021-03-29', '2021-05-09', 'afffffffffffffff', 'Pilates', '1'),
(2, '2021-04-12', '2021-05-09', 'afffffffffffffff', 'Pilates', '1'),
(3, '2021-03-29', '2021-04-22', 'adadadadadadadaf', 'Pilates', '0');

-- --------------------------------------------------------

--
-- Struttura della tabella `allenamento`
--

CREATE TABLE `allenamento` (
  `IdAllenamento` int(11) NOT NULL,
  `dataAllenamento` date DEFAULT NULL,
  `durata` time DEFAULT NULL,
  `NomeCorso` varchar(50) DEFAULT NULL,
  `codf` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `allenamento`
--

INSERT INTO `allenamento` (`IdAllenamento`, `dataAllenamento`, `durata`, `NomeCorso`, `codf`) VALUES
(1, '2021-04-28', '00:00:44', 'Pilates', 'aaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Struttura della tabella `corso`
--

CREATE TABLE `corso` (
  `NomeCorso` varchar(50) NOT NULL,
  `Prezzo` int(11) DEFAULT NULL,
  `Descrizione` varchar(100) DEFAULT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `corso`
--

INSERT INTO `corso` (`NomeCorso`, `Prezzo`, `Descrizione`, `foto`) VALUES
('Pilates', 1, 'Il pilates è un tipo di ginnastica (metodo fitness) di tipo rieducativo, preventivo ed ipoteticament', 'img/pilates.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `scheda`
--

CREATE TABLE `scheda` (
  `IdScheda` int(11) NOT NULL,
  `codf` varchar(16) DEFAULT NULL,
  `CodFiscale` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `codf` varchar(16) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `sesso` varchar(50) DEFAULT NULL,
  `dataNascita` date DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `tipou` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`codf`, `nome`, `cognome`, `telefono`, `sesso`, `dataNascita`, `username`, `email`, `password`, `tipou`) VALUES
('2', ' ', ' ', ' ', ' ', '0000-00-00', 'admin', '', 'root', 'A'),
('aaaaaaaaaaaaaaaa', 'aaa', 'aaa', '3132133313', 'M', '2021-04-22', '', '', '', 'I'),
('adadadadadadadaf', 'fabian', 'napoli', '3132133313', 'M', NULL, 'X_Faby', 'themaster557@hotmail.com', 'GG', 'S'),
('afffffffffffffff', 'ERNESTO', 'S', 'affafafafaff', 'Maschio', '2021-04-01', 'ernesto', 'prova@prova-com', 'gg', 'S'),
('cccccccccccccccc', 'c', 'c', '11', 'M', NULL, NULL, 'fabiannapoli3bi@gmail.com', 'gg', 'S'),
('IST2', 'Fabian', '1', '123223523', 'M', '2021-04-12', '', '', '', 'I');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `abbonamento`
--
ALTER TABLE `abbonamento`
  ADD PRIMARY KEY (`IdAbbonamento`),
  ADD KEY `codf` (`codf`),
  ADD KEY `NomeCorso` (`NomeCorso`);

--
-- Indici per le tabelle `allenamento`
--
ALTER TABLE `allenamento`
  ADD PRIMARY KEY (`IdAllenamento`),
  ADD KEY `NomeCorso` (`NomeCorso`),
  ADD KEY `codf` (`codf`);

--
-- Indici per le tabelle `corso`
--
ALTER TABLE `corso`
  ADD PRIMARY KEY (`NomeCorso`);

--
-- Indici per le tabelle `scheda`
--
ALTER TABLE `scheda`
  ADD PRIMARY KEY (`IdScheda`),
  ADD KEY `codf` (`codf`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`codf`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `abbonamento`
--
ALTER TABLE `abbonamento`
  MODIFY `IdAbbonamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `allenamento`
--
ALTER TABLE `allenamento`
  MODIFY `IdAllenamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `scheda`
--
ALTER TABLE `scheda`
  MODIFY `IdScheda` int(11) NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `abbonamento`
--
ALTER TABLE `abbonamento`
  ADD CONSTRAINT `abbonamento_ibfk_1` FOREIGN KEY (`codf`) REFERENCES `utente` (`codf`),
  ADD CONSTRAINT `abbonamento_ibfk_2` FOREIGN KEY (`NomeCorso`) REFERENCES `corso` (`NomeCorso`);

--
-- Limiti per la tabella `allenamento`
--
ALTER TABLE `allenamento`
  ADD CONSTRAINT `allenamento_ibfk_1` FOREIGN KEY (`NomeCorso`) REFERENCES `corso` (`NomeCorso`),
  ADD CONSTRAINT `allenamento_ibfk_2` FOREIGN KEY (`codf`) REFERENCES `utente` (`codf`);

--
-- Limiti per la tabella `scheda`
--
ALTER TABLE `scheda`
  ADD CONSTRAINT `scheda_ibfk_1` FOREIGN KEY (`codf`) REFERENCES `utente` (`codf`),
  ADD CONSTRAINT `scheda_ibfk_2` FOREIGN KEY (`codf`) REFERENCES `utente` (`codf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
