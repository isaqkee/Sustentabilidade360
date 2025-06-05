-- phpMyAdmin SQL Dump
-- version 5.2.2deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 15/05/2025 às 22:38
-- Versão do servidor: 11.4.5-MariaDB-1
-- Versão do PHP: 8.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `recicla`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `pontos`
--

CREATE TABLE `pontos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `atualizado` date DEFAULT NULL,
  `funciona` tinyint(1) NOT NULL DEFAULT 0,
  `site` varchar(200) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `contato` varchar(300) DEFAULT NULL,
  `funcionamento_dias` varchar(50) DEFAULT NULL,
  `funcionamento_hora_inicio` time DEFAULT NULL,
  `funcionamento_hora_fim` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pontos`
--

INSERT INTO `pontos` (`id`, `nome`, `atualizado`, `funciona`, `site`, `endereco`, `bairro`, `cep`, `contato`, `funcionamento_dias`, `funcionamento_hora_inicio`, `funcionamento_hora_fim`) VALUES
(1, 'Parque Ibirapuera', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Av. Pedro Álvares Cabral s/n', 'Vila Mariana', '04094-050', '', 'Seg - Dom', '07:00:00', '20:00:00'),
(2, 'Parque Trianon', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Rua Peixoto Gomide 949', 'Jardim Paulista', '01409-001', '', 'Seg - Dom', '06:00:00', '18:00:00'),
(3, 'Parque Prefeito Mario Covas', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Avenida Paulista 1853', 'Bela Vista', '01311-200', '', 'Seg - Sex', '00:00:00', '00:00:00'),
(4, 'Parque da Independência', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Avenida Nazareth s/n', 'Ipiranga', '04263-200', '', 'Seg - Sab', '00:00:00', '00:00:00'),
(5, 'Parque do Cordeiro Martin Luther King', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Rua Breves 968', 'Chácara Monte Alegre', '04645-002', '', '', '00:00:00', '00:00:00'),
(6, 'CARTUCHOS REAL & LOCAÇAO - SERVICOS DE INFORMATICA LTDA', NULL, 0, '-', 'AV. GEN MAC ARTHUR1129', 'Jaguare', '05338-001 ', '55 11 97811-6126/ +55 11 98991-4558 /COLETA@ABREE.ORG.BR', '', '00:00:00', '00:00:00'),
(7, 'Parque Lina e Paulo Raia', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Rua Volkswagen s/n', 'Vila Guarani', '04340-020', '', 'Seg - Sex', '00:00:00', '00:00:00'),
(8, 'Parque Buenos Aires', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Av Angélica 1.500', 'Higienópolis', '01227-00', '', 'Seg - Dom', '07:00:00', '19:00:00'),
(9, 'Parque do Povo', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Av. Henrique Chamma 420', 'Pinheiros', '04533-130', '', 'Seg - Sab', '09:00:00', '18:00:00'),
(10, 'Parque da Aclimação', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Rua Muniz de Souza 1.119', 'Aclimação', '01534-001', '', 'Seg - Sex', '00:00:00', '00:00:00'),
(11, 'Parque Burle Marx', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Av. D Helena Pereira de Moraes 200', 'Vila Andrade', '05707-400', '', 'Seg - Dom', '07:00:00', '19:00:00'),
(12, 'Parque Piqueri', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'R. Tuiuti 515', 'Tatuapé', '03081-003', '', 'Seg - Sab', '08:00:00', '17:00:00'),
(13, 'Jardim Herculano', NULL, 0, '', 'Estrada da Riviera 2282', 'Jd. Herculano', '04916-000', '(11) 5833-7351', 'Seg - Sex', '08:00:00', '18:00:00'),
(14, 'M’Boi Mirim', NULL, 0, '', 'Estrada do M’Boi Mirim 7.100', 'Jd. Ângela', '04948-030', '(11) 5832-6951', 'Seg - Sex', '06:00:00', '20:00:00'),
(15, 'Santo Dias', NULL, 0, '', 'Travessa Jasmim da Beirada 71 (Portão I)', 'Capão Redondo', '05868-580', '(11) 5511-9356', 'Seg - Sex', '06:00:00', '18:00:00'),
(16, 'Barragem de Guarapiranga', NULL, 0, '', 'Rua Doutor Caetano Petraglia Sobrinho 43 acesso Av. Atlântica', 'Jd. Guarapiranga', '04770-020', '(11) 5524-8403', 'Seg - Sex', '08:00:00', '17:00:00'),
(17, 'Praia do Sol', NULL, 0, '', 'Rua José Marques do Nascimento altura do número 3.540', 'Jardim Três Marias', '04772-120', '(11) 5666-2919', 'Seg - Sex', '07:00:00', '18:00:00'),
(18, 'Shangrilá', NULL, 0, '', 'Rua Irmã Maria Lourença 250', 'Grajau', '04852-019', '(11) 5933-3015', 'Seg - Sex', '08:00:00', '18:00:00'),
(19, 'Parque do Carmo', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Av. Afonso de Sampaio e Sousa 951', 'Itaquera', '08270-580', '', 'Seg - Sex', '00:00:00', '00:00:00'),
(20, 'Nabuco', NULL, 0, '', 'Rua Frederico Albuquerque 120', 'Jd. Itacolomi', '04385-010', '(11) 5678-6002 / (11) 5678-8493', '', '08:00:00', '17:00:00'),
(21, 'Parque Vila Guilherme /Trote', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Rua São Quirino 905', 'Vila Guilherme', '02056-070', '', 'Seg - Dom', '06:00:00', '22:00:00'),
(22, 'Prefeitura de São Paulo', NULL, 0, 'https://capital.sp.gov.br/w/noticia/prefeitura-de-sp-inaugura-ponto-publico-de-coleta-de-lixo-eletronico', 'Viaduto do Cha 15', 'Centro Histórico de São Paulo', '01002-020', '', 'Seg - Dom', '06:00:00', '22:00:00'),
(23, 'Sim recicla', NULL, 0, 'https://simrecicla.com.br/index.html', 'R. Cláudio Manoel 282', 'Jardim Tupi', '04939-190', '(11) 91511 2504', 'Seg - Sex', '08:00:00', '17:00:00'),
(24, 'Subprefeitura Freguesia/Brasilândia', NULL, 0, 'https://capital.sp.gov.br/web/freguesia_brasilandia/busca?q=Lixo+eletr%C3%B4nico', 'Av. João Marcelino Branco 95', 'Vila dos Andrades', '02610-000', '', 'Seg - Dom', '06:00:00', '22:00:00'),
(25, 'Ecoponto Vila União', NULL, 0, '', 'Rua Sousa Filho nº 690', 'Vila Arcadia', '02911-040', '', 'Seg - Dom', '06:00:00', '22:00:00'),
(26, 'Ecoponto Vila Souza', NULL, 0, '', 'Rua Jorge Mamede da Silva 200', 'Vila Rica', '02675-031', '', 'Seg - Dom', '06:00:00', '22:00:00'),
(27, 'Coopermiti - Lixo Eletrônico', NULL, 0, 'https://www.reciclasampa.com.br/artigo/subprefeitura-freguesia-/-brasilandia-promove-reciclagem-de-eletrolixo#:~:text=Caso%20voc%C3%AA%20tenha%20em%20suapaulista%20e%20fa%C3%A7a%20sua%20parte!', 'R. João Rudge 366', 'Casa Verde', '02513-020', '', 'Seg - Sex', '08:00:00', '17:00:00'),
(28, 'Lojas Americanas Lapa', NULL, 0, '', 'Rua Doze de Outubro 92', 'LAPA', '02675-031', '', 'Seg - Sex', '10:00:00', '16:00:00'),
(29, 'Prefeitura da Cidade de São Paulo', NULL, 0, '', 'Viaduto do Chá 15', 'CENTRO', '01002-020', '', 'Seg - Sex', '10:00:00', '16:00:00'),
(30, 'Casas Bahia São Paulo – Butantã Shopping', NULL, 0, '', 'Av. Dr. Antonio Graça Lima 190', 'BUTANTA', '05512-300', '', 'Seg - Sex', '10:00:00', '16:00:00'),
(31, 'Casas Bahia São Paulo – Shopping Metrô Santa Cruz', NULL, 0, '', 'Rua Domingos de Morais 2564', 'SANTA CRUZ', '04036-100', '', 'Seg - Sex', '10:00:00', '16:00:00'),
(32, 'Parque Trianon', NULL, 0, '', 'Rua Peixoto Gomide – até 1249 – lado ímpar 949', 'TRIANON', '01409-001', '', 'Seg - Sex', '10:00:00', '16:00:00'),
(33, 'Fast Shop São Paulo – Morumbi Shopping', NULL, 0, '', 'Avenida Roque Petroni Júnior 1089', 'MORUMBI', '04707-900', '', 'Seg - Sex', '10:00:00', '16:00:00'),
(34, 'Fast Shop São Paulo – Shopping Boulevard Tatuapé', NULL, 0, '', 'Rua Goncalves Crespo 78', 'TATUAPE', '03066-030', '', 'Seg - Sex', '10:00:00', '16:00:00'),
(35, 'Fast Shop São Paulo – Shopping Lar Center', NULL, 0, '', 'Avenida Otto Baumgart 500', 'Vila Guilherme', '02049-000', '', 'Seg - Sex', '10:00:00', '16:00:00'),
(36, 'Rodoviária Jabaquara', NULL, 0, '', 'Rua dos Jequitibás 0', 'JABAGUARA', '01154-060', '', 'Seg - Sex', '10:00:00', '16:00:00'),
(37, 'Rodoviária Barra Funda', NULL, 0, '', 'R Jornalista Aloysio Biondi 0', 'BARRA FUNDA', '01140-151', '', 'Seg - Sex', '10:00:00', '16:00:00'),
(38, 'SESC – São Paulo/Itaquera', NULL, 0, '', 'Avenida Fernando do Espírito Santo Alves de Mattos 1000', 'ITAQUERA', '08265-045', '', 'Seg - Sex', '10:00:00', '16:00:00'),
(39, 'Kalunga Matriz', NULL, 0, '', 'Rua da Mooca 1548', 'MOOCA', '03104-000', '', 'Seg - Sex', '10:00:00', '16:00:00'),
(40, 'Carrefour Hipermercado Osasco', NULL, 0, '', 'Av. dos Autonomistas 1542', 'Vila Yara', '06020-015', '', '24h', '00:00:00', '00:00:00'),
(41, 'Carrefour Hipermercado Barueri', NULL, 0, '', 'Alameda Araguaia 2751', 'Tamboré', '06455-000', '', 'Seg - Dom', '07:00:00', '23:00:00'),
(42, 'Carrefour Hipermercado São Bernardo do Campo', NULL, 0, '', 'Av. do Taboão 2000', 'Taboão', '09655-000', '', '24h', '00:00:00', '00:00:00'),
(43, 'Carrefour Diadema', NULL, 0, '', 'Av. Pres. Kennedy 635', 'Jardim Pitangueiras', '09910-550', '', 'Seg - Dom', '06:00:00', '23:00:00'),
(44, 'Recicla BR', NULL, 0, 'https://gruporeciclabr.com.br/', 'Av. Guilherme Cotching 726Vila Maria - SP', 'Vila Maria', '', '(11) 2222-1085', 'Seg - Sex', '08:00:00', '17:00:00'),
(45, 'RUSSO Comércio de Sucatas', NULL, 0, '', 'R. Cardeal Leme 151', 'Bela Vista', '01330-050', '(11) 3284-5650', 'Seg - Sex', '08:00:00', '17:00:00'),
(46, 'Cooperativa de Reciclagem Crescer', NULL, 0, '', 'R. Marina Ciufuli Zanfelice 289', 'Lapa', '05040-000', '(11) 3902-3822', 'Seg - Sex', '09:00:00', '18:00:00'),
(47, 'Reciclagem & Lata', NULL, 0, '', 'Av. José de Brito de Freitas 300', 'Vila Bandeirantes', '02552-000', '(11) 94505-9132', 'Seg - Sex', '07:00:00', '18:00:00'),
(48, 'Recicla Latas', NULL, 0, 'https://reciclalatas.com.br/', 'Rua dos Pinheiros 498', 'Pinheiros', '05422-001', '(11) 91604-3139', 'Seg - Sex', '08:00:00', '17:00:00'),
(49, 'Grupo Maeda Recicla', NULL, 0, 'https://www.grupomaedarecicla.com.br/', 'Av. Padre Arlindo Vieira 2681', 'Jardim Vergueiro', '04166-003', '(11) 2335-5584', 'Seg - Sex', '07:30:00', '17:00:00'),
(50, 'Kanêfer', NULL, 0, 'https://www.sucatakanefer.com.br/', 'Rua Cristóvão Gonçalves 48', 'Pinheiros', '', '(11) 98375-5408', 'Seg - Sex', '09:00:00', '18:00:00'),
(51, 'Carrefour Rebouças/Shopping Eldorado', NULL, 0, '', 'Av. Rebouças 3970', 'Pinheiros', '05402-600', '', 'Seg - Dom', '08:00:00', '23:00:00'),
(52, 'Carrefour Hipermercado Pinheiros', NULL, 0, '', 'Av. das Nações Unidas 15187', ' Chácara Santo Antônio (Zona Sul)', '04794-000', '', 'Seg - Dom', '06:00:00', '23:00:00'),
(53, 'Green Eletron', NULL, 0, 'https://greeneletron.org.br/blog/reciclagem-pilhas-baterias/', 'Av. Paulista 1313 - 7º andar', '', '01311-300', '(11) 2175-0050', 'Seg - Sex', '10:00:00', '16:00:00'),
(54, 'Larplastico', NULL, 0, 'https://www.larplasticos.com.br/como-e-feita-a-reciclagem-de-pilhas-e-baterias-usadas/', 'Rodovia Dom Pedro I km 73', '', '12954-260', '', '', '00:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pontos_tags`
--

CREATE TABLE `pontos_tags` (
  `id_ponto` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pontos_tags`
--

INSERT INTO `pontos_tags` (`id_ponto`, `id_tag`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `tags`
--

INSERT INTO `tags` (`id`, `nome`) VALUES
(1, 'eletrônicos'),
(2, 'pilhas'),
(3, 'óleo');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pontos`
--
ALTER TABLE `pontos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices de tabela `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pontos`
--
ALTER TABLE `pontos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
