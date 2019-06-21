-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Jun-2019 às 20:08
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ordemdeservico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `nome` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`nome`, `id`, `email`, `cpf`) VALUES
('Administrador', 1, 'admin@hotmail.com', '2a537dfc93febfe004c6bd0d2c95c1e4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `assistente`
--

CREATE TABLE `assistente` (
  `cod` int(11) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cpf` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `assistente`
--

INSERT INTO `assistente` (`cod`, `telefone`, `nome`, `cpf`, `email`) VALUES
(11, '(00) 00000-0002', 'Assistente', 'df65a265f57fcdeb879f930c0f60f5fe', 'assistente@hotmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cod` int(11) NOT NULL,
  `cpf` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cod`, `cpf`, `telefone`, `nome`, `email`) VALUES
(17, '60e352c188daed0d3cace25e4a5dafd5', '(00) 00000-0000', 'Cliente', 'cliente@cliente'),
(18, '6e37ec70d50982a6606f0797649d6d85', '(88) 99324-3453', 'Kercia', 'kerciaandrade@gmail.com'),
(19, '60e352c188daed0d3cace25e4a5dafd5', '(00) 00000-0000', 'Cliente', 'cliente@hotmail.com'),
(21, '60e352c188daed0d3cace25e4a5dafd5', '(11) 11111-1111', 'Soje', 'jose@jose'),
(22, '53d8788d1abbcddd63193d4a4fc27a0b', '(88) 98853-7778', 'Mariana', 'Mariana33@gmail.com'),
(23, '1d632244aa092a434fc1bb76ad26de22', '(44) 44444-4444', 'franciscleudo', 'francis@gmail.com'),
(24, 'b16b4b43c6f34f129d3a9c48c2693c52', '(00) 00000-0000', 'joão Vitor', 'joaovitor@hotmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracoes`
--

CREATE TABLE `configuracoes` (
  `cod` int(11) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `plano_de_fundo` varchar(100) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `servico1` varchar(100) DEFAULT NULL,
  `servico2` varchar(100) DEFAULT NULL,
  `servico3` varchar(100) DEFAULT NULL,
  `servico4` varchar(100) DEFAULT NULL,
  `slogan` varchar(100) DEFAULT NULL,
  `foto1` varchar(100) DEFAULT NULL,
  `foto2` varchar(100) DEFAULT NULL,
  `foto3` varchar(100) DEFAULT NULL,
  `foto4` varchar(100) DEFAULT NULL,
  `foto6` varchar(100) DEFAULT NULL,
  `foto5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitacao`
--

CREATE TABLE `solicitacao` (
  `cod` int(11) NOT NULL,
  `hora` varchar(10) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `dia` varchar(10) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `cod_assistente` int(11) DEFAULT NULL,
  `mensagem` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `solicitacao`
--

INSERT INTO `solicitacao` (`cod`, `hora`, `descricao`, `dia`, `foto`, `status`, `cod_cliente`, `cod_assistente`, `mensagem`) VALUES
(23, '09:13:29', 'Esse será aceito', '16/06/2019', '5a01266353ac180dfff717fe7f964f5d2d4a6b5a.jpg', 'Aceito', 19, NULL, 'esse pedido foi aceito'),
(24, '09:13:42', 'Esse será recusado', '16/06/2019', '6877b791b4f342547c1c26981d7ef6fd3a91bb9b.jpg', 'Recusado', 19, NULL, 'Esse pedido foi recusado'),
(26, '09:14:45', 'Esse será pendente ', '16/06/2019', '146196f2244d389594f57a1099b5e64570c3440c.jpg', 'Aceito', 19, NULL, 'foi aceito'),
(27, '09:51:04', 'Esse será pendente de novo ', '16/06/2019', '1559b862dde19fc3275e0b4b89ca887db74e013d.jpg', 'Recusado', 19, NULL, 'uma pena '),
(29, '11:33:43', 'okhhhddd', '16/06/2019', '8797ff7da42cbc559361bdd1683ccae498671d9a.jpg', 'Aceito', 21, NULL, 'aceito'),
(30, '07:19:26', 'ssssss', '17/06/2019', '1a009d90bd5bdf78d34746448844b8ea79e4f5c1.jpg', 'Pendendte', 19, NULL, NULL),
(31, '09:06:36', 'Minha tela quebrou, ele precisa de sustentação na base.\r\nEstá remendado com fita!!', '17/06/2019', 'd50c6f80d6f50d9c893d12a50eb0310250890fcd.jpg', 'Aceito', 22, NULL, 'Pode trazer o seu aparelho hoje mesmo, trabalharei nele o quanto antes para entregar antes do feriado.\r\nObrigada!!'),
(32, '09:39:54', 'iaasdasniandiandsi', '17/06/2019', '7515e9bc7b72b07a6a12159c416030a5a6955c84.gif', 'Pendendte', 23, NULL, NULL),
(33, '10:00:01', 'ta todo quebrado', '17/06/2019', 'ae4e3e1b6ea84b06649a38d1406b48a957cd26b0.png', 'Aceito', 19, NULL, 'foi aceito');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assistente`
--
ALTER TABLE `assistente`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `solicitacao`
--
ALTER TABLE `solicitacao`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `cod_assistente` (`cod_assistente`),
  ADD KEY `cod_cliente` (`cod_cliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assistente`
--
ALTER TABLE `assistente`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `solicitacao`
--
ALTER TABLE `solicitacao`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `solicitacao`
--
ALTER TABLE `solicitacao`
  ADD CONSTRAINT `solicitacao_ibfk_1` FOREIGN KEY (`cod_assistente`) REFERENCES `assistente` (`cod`),
  ADD CONSTRAINT `solicitacao_ibfk_2` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
