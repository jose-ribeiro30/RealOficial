-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Nov-2022 às 00:23
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `starjobs`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `Id` int(11) NOT NULL,
  `Nome_completo` varchar(65) DEFAULT NULL,
  `RG` varchar(12) NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `Curso` varchar(55) DEFAULT NULL,
  `Senha` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`Id`, `Nome_completo`, `RG`, `data_nasc`, `Telefone`, `Email`, `CPF`, `Curso`, `Senha`) VALUES
(1, 'João da Silva', '551879569', '2000-04-27', '99785333', 'joaodasilva3@gmail.com', '485.789.654-77', 'Desenvolvimento de Software Multiplataforma', '97005333'),
(2, NULL, '0', NULL, '0', '', NULL, NULL, NULL),
(3, 'Luciano Araldo', '55.478.721-4', '2000-05-04', '19 9885-2756', 'lucianoaraldo@gmail.com', '1113411241', 'Gestão Empresarial', '97005333');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `Id_empresa` int(11) NOT NULL,
  `Razao_social` varchar(65) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `CNPJ` varchar(18) DEFAULT NULL,
  `Senha` varchar(8) DEFAULT NULL,
  `Insc_est` varchar(60) NOT NULL,
  `Ramo_ativ` varchar(150) NOT NULL,
  `CEP` varchar(9) NOT NULL,
  `Logradouro` varchar(200) NOT NULL,
  `Bairro` varchar(200) NOT NULL,
  `Num` varchar(10) NOT NULL,
  `Complemento` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`Id_empresa`, `Razao_social`, `Email`, `CNPJ`, `Senha`, `Insc_est`, `Ramo_ativ`, `CEP`, `Logradouro`, `Bairro`, `Num`, `Complemento`) VALUES
(1, 'Ype', 'ype@detergente.com', '563633633/001', '97005333', '', '', '', '', '', '', ''),
(2, 'WLM Scania & Agro', 'wlmscaniaagro@wlm.com', '32523260001', '97005333', '', '', '', '', '', '', ''),
(3, 'HENKEL LTDA ', 'henkel@brasil.com', '63263365/0001', '97005333', '', '', '', '', '', '', ''),
(4, 'sei la org', 'seila@seila.com', '15515313', '97005333', '19875123542', 'Fazendo nadas', '19875-587', 'Aquele', 'Joao da silva', '57', 'Prédio'),
(5, 'aquele TOP', 'aquele@aquele.com', '548481654', '97005333', '4554542154', 'Fazendo aquilo', '15758-981', 'Aquele lá ', 'Aquilo', '56', 'Mansão'),
(6, 'algo FODA', 'algo@algo.com', '135132121', '97005333', '5154516552', 'Fazendo algo', '19875-854', 'Algo Nisso', 'Algo', '5712', 'Imóvel'),
(7, 'nada nda', 'nada@nada.com', '662210', '97005333', '515454054', 'Fazendo algo mas nada', '54752-563', 'Nada', 'Adan', '5715', 'Prédio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa_cad`
--

CREATE TABLE `empresa_cad` (
  `ID_empresa` int(11) NOT NULL,
  `Razao_social` varchar(65) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `CNPJ` varchar(18) NOT NULL,
  `Senha` varchar(8) NOT NULL,
  `Insc_est` varchar(60) NOT NULL,
  `Ramo_ativ` varchar(150) NOT NULL,
  `CEP` varchar(9) NOT NULL,
  `Logradouro` varchar(200) NOT NULL,
  `Bairro` varchar(200) NOT NULL,
  `Num` varchar(10) NOT NULL,
  `Complemento` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fatec`
--

CREATE TABLE `fatec` (
  `Id_admin` int(11) NOT NULL,
  `Login` varchar(12) DEFAULT NULL,
  `Senha` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fatec`
--

INSERT INTO `fatec` (`Id_admin`, `Login`, `Senha`) VALUES
(1, 'admin', '97005333');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagas`
--

CREATE TABLE `vagas` (
  `ID_vaga` int(11) NOT NULL,
  `ID_empresa` int(11) DEFAULT NULL,
  `Conteudo` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vagas`
--

INSERT INTO `vagas` (`ID_vaga`, `ID_empresa`, `Conteudo`) VALUES
(2, 2, '<h2 class=\"texto-azul\">ESTAGIO EM T.I</h2>\r\n \r\n<p>Empresa: WLM Scania & Agro | Campinas SP \r\n <br>\r\n\r\nAtividades: \r\n<br>\r\nAuxiliar no atendimento remoto e presencial aos usuários do sistema da empresa. \r\n<br>\r\nDar suporte na formatação e manutenção dos computadores e notebooks. \r\n<br>\r\nAcompanhar controle de chamados abertos em sistema. \r\n<br>\r\nRealizar atendimento telefônico. \r\n<br>\r\n <br>\r\n<br>\r\nRequisitos: \r\n<br>\r\nGraduação em andamento em Rede de Computadores, Engenharia da Computação, Ciências da Computação e/ou áreas afins. \r\n<br>\r\nHabilidade com atendimento ao usuário (help desk). \r\n<br>\r\nConhecimento de Software e Hardware, manutenção de desktops e notebooks e noções de rede estruturada, será um diferencial. \r\n<br>\r\n\r\nVantagens/Benefícios: \r\n<br>\r\nVale transporte; \r\n<br>\r\nRefeição na empresa; \r\n<br>\r\nSeguro de Vida; \r\n<br>\r\nGympass; \r\n<br>\r\nUniforme; \r\n<br>\r\n<br>\r\nHorário de trabalho: \r\n<br>\r\nSegunda a sexta-feira, das 07h30 às 14h30. \r\n</p>\r\n \r\n\r\n '),
(3, 3, '<h2 class=\"texto-azul\">ESTÁGIO EM GESTÃO INDUSTRIAL</h2>  \r\n<p>Empresa: HENKEL LTDA | Itapevi SP \r\n<br>\r\nDados da vaga: \r\n<br>\r\nSalário<br> \r\nR$ 1.700 por mês \r\n<br>\r\nTipo da vaga<br> \r\nEstágio / Trainee<br> \r\n\r\nDescrição completa da vaga: <br>\r\nR$ 1,700.00<br> \r\n\r\n<br><br>\r\n\r\nBenefícios \r\n<br>\r\nSeguro de Vida<br> \r\nAssistência Médica<br> \r\nAssistência Odontológica<br> \r\n13º Bolsa Auxílio <br>\r\nÔnibus fretado <br>\r\nRefeição no local <br>\r\nRecesso remunerado <br>\r\nEspaço para Refeição <br>\r\nCurso de Idiomas <br>\r\nCesta de Natal <br>\r\n \r\n<br>\r\nRequisitos <br>\r\n<br>\r\nADMINISTRAÇÃO <br>\r\nENGENHARIA BIOQUÍMICA<br> \r\nQUIMICA INDUSTRIAL <br>\r\nENGENHARIA DE PRODUCAO COM ENFASE EM QUIMICA <br>\r\nADMINISTRAÇÃO PUBLICA COM ENFASE EM MARKETING <br>\r\nENGENHARIA DE GESTÃO <br>\r\nENGENHARIA DE AUTOMACAO <br>\r\nADMINISTRAÇÃO DE EMPRESAS COM ÊNFASE EM COMÉRCIO INTERNACIONAL <br>\r\nENGENHARIA DE PRODUÇÃO QUIMICA <br>\r\nENGENHARIA DE SISTEMAS <br>\r\nENGENHARIA INDUSTRIAL <br>\r\n <br>\r\nConhecimentos obrigatórios <br>\r\n\r\nInglês (Intermediário) <br>\r\n\r\nConhecimentos valorizados <br>\r\n\r\nExcel <br>\r\n\r\nÁrea de atuação <br>\r\n\r\nINDUSTRIA QUIMICA <br>\r\n\r\nCarga horária semanal <br>\r\n<br>\r\n30 \r\n<br>\r\nDuração do programa <br>\r\n<br>\r\nAté 2 anos </p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagas_do_aluno`
--

CREATE TABLE `vagas_do_aluno` (
  `ID_vaga` int(11) DEFAULT NULL,
  `Id_aluno` int(11) DEFAULT NULL,
  `path` varchar(100) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vaga_aprov`
--

CREATE TABLE `vaga_aprov` (
  `IdVagaAprov` int(11) NOT NULL,
  `ID_vaga` int(11) NOT NULL,
  `ID_empresa` int(11) NOT NULL,
  `Conteudo` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vaga_aprov`
--

INSERT INTO `vaga_aprov` (`IdVagaAprov`, `ID_vaga`, `ID_empresa`, `Conteudo`) VALUES
(1, 1, 1, '<h2 class=\"texto-azul\">Estágio em Gestão Empresarial</h2>\r\n \r\n\r\n<p>Empresa: Ypê | Amparo SP </p>\r\n\r\n <br>\r\n<h3>Dados da vaga:</h3> \r\n<br>\r\nSalário \r\n<br>\r\nR$ 1.300 - R$ 1.500 por mês \r\n<br>\r\nTipo da vaga \r\n<br>\r\nEstágio / Trainee \r\n <br>\r\n\r\nDescrição completa da vaga: \r\n \r\n<br>\r\nFormação: Cursando Gestão Empresarial (noturno). \r\n<br>\r\nIdioma: Inglês Intermediário (Desejável) \r\n<br>\r\nConhecimento técnico em Sistema operacional Windows e Microinformática como usuário. \r\n <br>\r\n\r\nAtividades: \r\n<br>\r\n-Cadastrar Novos Materiais para geração de Part Numbers (P/Ns); \r\n<br>\r\n-Realizar liberação de acessos a visitantes; \r\n<br>\r\n-Aberturas de chamados corporativos e paperless; \r\n<br>\r\n-Enviar e receber correspondências; \r\n<br>\r\n-Solicitar emissões de notas fiscais; \r\n<br>\r\n-Gerar ATAS de Reuniões; \r\n<br>\r\n-Prestar suporte ao seu supervisor imediato na gestão da área; \r\n<br>\r\n-Realizar as atividades de organização e limpeza no setor de trabalho visando o 5S; \r\n<br>\r\n-Colaborar para manutenção dos programas da Qualidade e melhorias continua seguindo normas e procedimentos, identificando potenciais melhorias e atuando no sentido de implementá-las; \r\n<br>\r\n-Cumprir as normas e procedimentos referentes ao sistema de gestão da qualidade, meio ambiente, segurança e saúde ocupacional; \r\n<br>\r\n-Zelar pela ordem, guarda e conservação dos materiais, equipamentos sob sua responsabilidade e do local de trabalho, bem como manter a organização de toda documentação referente ao processo de trabalho. \r\n<br>\r\nTipo de vaga: Estágio / Trainee \r\n<br>\r\nSalário: R$1.300,00 - R$1.500,00 por mês \r\n<br>\r\nBenefícios: \r\n<br>\r\nAssistência médica \r\n<br>\r\nAssistência odontológica \r\n<br>\r\nVale-alimentação \r\n<br>\r\nHorário de trabalho: \r\n<br>\r\nDe segunda à sexta-feira '),
(4, 38, 1, '<h3><span style=\"color:hsl(240,75%,60%);\">FKLmfmemkeakaknnkNKAGKPnagq</span></h3><p><span style=\"color:hsl(0,0%,0%);\">muitoooooo foda bicho</span></p>');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`Id_empresa`);

--
-- Índices para tabela `empresa_cad`
--
ALTER TABLE `empresa_cad`
  ADD PRIMARY KEY (`ID_empresa`);

--
-- Índices para tabela `fatec`
--
ALTER TABLE `fatec`
  ADD PRIMARY KEY (`Id_admin`);

--
-- Índices para tabela `vagas`
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`ID_vaga`),
  ADD KEY `ID_empresa` (`ID_empresa`);

--
-- Índices para tabela `vagas_do_aluno`
--
ALTER TABLE `vagas_do_aluno`
  ADD KEY `vagas_do_aluno_ibfk_2` (`Id_aluno`);

--
-- Índices para tabela `vaga_aprov`
--
ALTER TABLE `vaga_aprov`
  ADD PRIMARY KEY (`IdVagaAprov`),
  ADD KEY `ID_empresa` (`ID_empresa`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `Id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `empresa_cad`
--
ALTER TABLE `empresa_cad`
  MODIFY `ID_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fatec`
--
ALTER TABLE `fatec`
  MODIFY `Id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vagas`
--
ALTER TABLE `vagas`
  MODIFY `ID_vaga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `vaga_aprov`
--
ALTER TABLE `vaga_aprov`
  MODIFY `IdVagaAprov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `vagas_do_aluno`
--
ALTER TABLE `vagas_do_aluno`
  ADD CONSTRAINT `vagas_do_aluno_ibfk_2` FOREIGN KEY (`Id_aluno`) REFERENCES `aluno` (`Id`);

--
-- Limitadores para a tabela `vaga_aprov`
--
ALTER TABLE `vaga_aprov`
  ADD CONSTRAINT `vaga_aprov_ibfk_2` FOREIGN KEY (`ID_empresa`) REFERENCES `empresa` (`Id_empresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
