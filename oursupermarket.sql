-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2021 às 21:04
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `oursupermarket`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add horario', 7, 'add_horario'),
(26, 'Can change horario', 7, 'change_horario'),
(27, 'Can delete horario', 7, 'delete_horario'),
(28, 'Can view horario', 7, 'view_horario'),
(29, 'Can add notas', 8, 'add_notas'),
(30, 'Can change notas', 8, 'change_notas'),
(31, 'Can delete notas', 8, 'delete_notas'),
(32, 'Can view notas', 8, 'view_notas'),
(33, 'Can add alunos', 9, 'add_alunos'),
(34, 'Can change alunos', 9, 'change_alunos'),
(35, 'Can delete alunos', 9, 'delete_alunos'),
(36, 'Can view alunos', 9, 'view_alunos'),
(37, 'Can add arquivos', 10, 'add_arquivos'),
(38, 'Can change arquivos', 10, 'change_arquivos'),
(39, 'Can delete arquivos', 10, 'delete_arquivos'),
(40, 'Can view arquivos', 10, 'view_arquivos'),
(41, 'Can add assuntos', 11, 'add_assuntos'),
(42, 'Can change assuntos', 11, 'change_assuntos'),
(43, 'Can delete assuntos', 11, 'delete_assuntos'),
(44, 'Can view assuntos', 11, 'view_assuntos'),
(45, 'Can add disciplina', 12, 'add_disciplina'),
(46, 'Can change disciplina', 12, 'change_disciplina'),
(47, 'Can delete disciplina', 12, 'delete_disciplina'),
(48, 'Can view disciplina', 12, 'view_disciplina'),
(49, 'Can add envia resp', 13, 'add_enviaresp'),
(50, 'Can change envia resp', 13, 'change_enviaresp'),
(51, 'Can delete envia resp', 13, 'delete_enviaresp'),
(52, 'Can view envia resp', 13, 'view_enviaresp'),
(53, 'Can add funcionario', 14, 'add_funcionario'),
(54, 'Can change funcionario', 14, 'change_funcionario'),
(55, 'Can delete funcionario', 14, 'delete_funcionario'),
(56, 'Can view funcionario', 14, 'view_funcionario'),
(57, 'Can add informacoes do responsavel', 15, 'add_informacoesdoresponsavel'),
(58, 'Can change informacoes do responsavel', 15, 'change_informacoesdoresponsavel'),
(59, 'Can delete informacoes do responsavel', 15, 'delete_informacoesdoresponsavel'),
(60, 'Can view informacoes do responsavel', 15, 'view_informacoesdoresponsavel'),
(61, 'Can add livros', 16, 'add_livros'),
(62, 'Can change livros', 16, 'change_livros'),
(63, 'Can delete livros', 16, 'delete_livros'),
(64, 'Can view livros', 16, 'view_livros'),
(65, 'Can add niveis de acesso', 17, 'add_niveisdeacesso'),
(66, 'Can change niveis de acesso', 17, 'change_niveisdeacesso'),
(67, 'Can delete niveis de acesso', 17, 'delete_niveisdeacesso'),
(68, 'Can view niveis de acesso', 17, 'view_niveisdeacesso'),
(69, 'Can add postagens', 18, 'add_postagens'),
(70, 'Can change postagens', 18, 'change_postagens'),
(71, 'Can delete postagens', 18, 'delete_postagens'),
(72, 'Can view postagens', 18, 'view_postagens'),
(73, 'Can add presenca', 19, 'add_presenca'),
(74, 'Can change presenca', 19, 'change_presenca'),
(75, 'Can delete presenca', 19, 'delete_presenca'),
(76, 'Can view presenca', 19, 'view_presenca'),
(77, 'Can add professor', 20, 'add_professor'),
(78, 'Can change professor', 20, 'change_professor'),
(79, 'Can delete professor', 20, 'delete_professor'),
(80, 'Can view professor', 20, 'view_professor'),
(81, 'Can add questoes', 21, 'add_questoes'),
(82, 'Can change questoes', 21, 'change_questoes'),
(83, 'Can delete questoes', 21, 'delete_questoes'),
(84, 'Can view questoes', 21, 'view_questoes'),
(85, 'Can add turma', 22, 'add_turma'),
(86, 'Can change turma', 22, 'change_turma'),
(87, 'Can delete turma', 22, 'delete_turma'),
(88, 'Can view turma', 22, 'view_turma'),
(89, 'Can add cliente', 23, 'add_cliente'),
(90, 'Can change cliente', 23, 'change_cliente'),
(91, 'Can delete cliente', 23, 'delete_cliente'),
(92, 'Can view cliente', 23, 'view_cliente'),
(93, 'Can add fornecedor', 24, 'add_fornecedor'),
(94, 'Can change fornecedor', 24, 'change_fornecedor'),
(95, 'Can delete fornecedor', 24, 'delete_fornecedor'),
(96, 'Can view fornecedor', 24, 'view_fornecedor'),
(97, 'Can add localizacao', 25, 'add_localizacao'),
(98, 'Can change localizacao', 25, 'change_localizacao'),
(99, 'Can delete localizacao', 25, 'delete_localizacao'),
(100, 'Can view localizacao', 25, 'view_localizacao'),
(101, 'Can add produto', 26, 'add_produto'),
(102, 'Can change produto', 26, 'change_produto'),
(103, 'Can delete produto', 26, 'delete_produto'),
(104, 'Can view produto', 26, 'view_produto'),
(105, 'Can add venda', 27, 'add_venda'),
(106, 'Can change venda', 27, 'change_venda'),
(107, 'Can delete venda', 27, 'delete_venda'),
(108, 'Can view venda', 27, 'view_venda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'paginas', 'alunos'),
(10, 'paginas', 'arquivos'),
(11, 'paginas', 'assuntos'),
(23, 'paginas', 'cliente'),
(12, 'paginas', 'disciplina'),
(13, 'paginas', 'enviaresp'),
(24, 'paginas', 'fornecedor'),
(14, 'paginas', 'funcionario'),
(7, 'paginas', 'horario'),
(15, 'paginas', 'informacoesdoresponsavel'),
(16, 'paginas', 'livros'),
(25, 'paginas', 'localizacao'),
(17, 'paginas', 'niveisdeacesso'),
(8, 'paginas', 'notas'),
(18, 'paginas', 'postagens'),
(19, 'paginas', 'presenca'),
(26, 'paginas', 'produto'),
(20, 'paginas', 'professor'),
(21, 'paginas', 'questoes'),
(22, 'paginas', 'turma'),
(27, 'paginas', 'venda'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-22 20:01:31.266844'),
(2, 'auth', '0001_initial', '2021-11-22 20:01:42.980369'),
(3, 'admin', '0001_initial', '2021-11-22 20:01:45.411595'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-22 20:01:45.541780'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-22 20:01:45.673915'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-22 20:01:47.901343'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-22 20:01:48.173712'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-22 20:01:48.827654'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-22 20:01:48.919411'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-22 20:01:51.472102'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-22 20:01:51.533411'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-22 20:01:51.719901'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-22 20:01:52.891877'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-22 20:01:53.414986'),
(15, 'paginas', '0001_initial', '2021-11-22 20:02:08.711529'),
(16, 'paginas', '0002_auto_20201119_1723', '2021-11-22 20:02:11.590039'),
(17, 'paginas', '0003_auto_20210731_1129', '2021-11-22 20:02:25.767192'),
(18, 'paginas', '0004_auto_20211122_1701', '2021-11-22 20:02:40.210283'),
(19, 'sessions', '0001_initial', '2021-11-22 20:02:42.469894');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas_cliente`
--

CREATE TABLE `paginas_cliente` (
  `id_cliente` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `telefone` varchar(250) DEFAULT NULL,
  `cpf` varchar(250) DEFAULT NULL,
  `rg` varchar(250) DEFAULT NULL,
  `id_localizacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas_fornecedor`
--

CREATE TABLE `paginas_fornecedor` (
  `id_fornecedor` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `telefone` varchar(250) DEFAULT NULL,
  `id_localizacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas_horario`
--

CREATE TABLE `paginas_horario` (
  `id` int(11) NOT NULL,
  `primeiraAulaS` varchar(40) NOT NULL,
  `segundaAulaS` varchar(40) NOT NULL,
  `terceiraAulaS` varchar(40) NOT NULL,
  `quartaAulaS` varchar(40) NOT NULL,
  `quintaAulaS` varchar(40) NOT NULL,
  `sextaAulaS` varchar(40) NOT NULL,
  `setimaAulaS` varchar(40) NOT NULL,
  `oitavaAulaS` varchar(40) NOT NULL,
  `nonaAulaS` varchar(40) NOT NULL,
  `decimaAulaS` varchar(40) NOT NULL,
  `primeiraAulaT` varchar(40) NOT NULL,
  `segundaAulaT` varchar(40) NOT NULL,
  `terceiraAulaT` varchar(40) NOT NULL,
  `quartaAulaT` varchar(40) NOT NULL,
  `quintaAulaT` varchar(40) NOT NULL,
  `sextaAulaT` varchar(40) NOT NULL,
  `setimaAulaT` varchar(40) NOT NULL,
  `oitavaAulaT` varchar(40) NOT NULL,
  `nonaAulaT` varchar(40) NOT NULL,
  `decimaAulaT` varchar(40) NOT NULL,
  `primeiraAulaQ` varchar(40) NOT NULL,
  `segundaAulaQ` varchar(40) NOT NULL,
  `terceiraAulaQ` varchar(40) NOT NULL,
  `quartaAulaQ` varchar(40) NOT NULL,
  `quintaAulaQ` varchar(40) NOT NULL,
  `sextaAulaQ` varchar(40) NOT NULL,
  `setimaAulaQ` varchar(40) NOT NULL,
  `oitavaAulaQ` varchar(40) NOT NULL,
  `nonaAulaQ` varchar(40) NOT NULL,
  `decimaAulaQ` varchar(40) NOT NULL,
  `primeiraAulaQUI` varchar(40) NOT NULL,
  `segundaAulaQUI` varchar(40) NOT NULL,
  `terceiraAulaQUI` varchar(40) NOT NULL,
  `quartaAulaQUI` varchar(40) NOT NULL,
  `quintaAulaQUI` varchar(40) NOT NULL,
  `sextaAulaQUI` varchar(40) NOT NULL,
  `setimaAulaQUI` varchar(40) NOT NULL,
  `oitavaAulaQUI` varchar(40) NOT NULL,
  `nonaAulaQUI` varchar(40) NOT NULL,
  `decimaAulaQUI` varchar(40) NOT NULL,
  `primeiraAulaSEX` varchar(40) NOT NULL,
  `segundaAulaSEX` varchar(40) NOT NULL,
  `terceiraAulaSEX` varchar(40) NOT NULL,
  `quartaAulaSEX` varchar(40) NOT NULL,
  `quintaAulaSEX` varchar(40) NOT NULL,
  `sextaAulaSEX` varchar(40) NOT NULL,
  `setimaAulaSEX` varchar(40) NOT NULL,
  `oitavaAulaSEX` varchar(40) NOT NULL,
  `nonaAulaSEX` varchar(40) NOT NULL,
  `decimaAulaSEX` varchar(40) NOT NULL,
  `turma` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas_localizacao`
--

CREATE TABLE `paginas_localizacao` (
  `id_localizacao` int(11) NOT NULL,
  `rua` varchar(250) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(250) DEFAULT NULL,
  `cidade` varchar(250) DEFAULT NULL,
  `uf` varchar(250) DEFAULT NULL,
  `cep` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas_notas`
--

CREATE TABLE `paginas_notas` (
  `id` int(11) NOT NULL,
  `PBFisica` decimal(4,2) DEFAULT NULL,
  `SBFisica` decimal(4,2) DEFAULT NULL,
  `TBFisica` decimal(4,2) DEFAULT NULL,
  `QBFisica` decimal(4,2) DEFAULT NULL,
  `RecFisica` decimal(4,2) DEFAULT NULL,
  `MFisica` decimal(4,2) DEFAULT NULL,
  `PBHistoria` decimal(4,2) DEFAULT NULL,
  `SBHistoria` decimal(4,2) DEFAULT NULL,
  `TBHistoria` decimal(4,2) DEFAULT NULL,
  `QBHistoria` decimal(4,2) DEFAULT NULL,
  `RecHistoria` decimal(4,2) DEFAULT NULL,
  `MHistoria` decimal(4,2) DEFAULT NULL,
  `PBBiologia` decimal(4,2) DEFAULT NULL,
  `SBBiologia` decimal(4,2) DEFAULT NULL,
  `TBBiologia` decimal(4,2) DEFAULT NULL,
  `QBBiologia` decimal(4,2) DEFAULT NULL,
  `RecBiologia` decimal(4,2) DEFAULT NULL,
  `MBiologia` decimal(4,2) DEFAULT NULL,
  `PBFilosofia` decimal(4,2) DEFAULT NULL,
  `SBFilosofia` decimal(4,2) DEFAULT NULL,
  `TBFilosofia` decimal(4,2) DEFAULT NULL,
  `QBFilosofia` decimal(4,2) DEFAULT NULL,
  `RecFilosofia` decimal(4,2) DEFAULT NULL,
  `MFilosofia` decimal(4,2) DEFAULT NULL,
  `PBGeografia` decimal(4,2) DEFAULT NULL,
  `SBGeografia` decimal(4,2) DEFAULT NULL,
  `TBGeografia` decimal(4,2) DEFAULT NULL,
  `QBGeografia` decimal(4,2) DEFAULT NULL,
  `RecGeografia` decimal(4,2) DEFAULT NULL,
  `MGeografia` decimal(4,2) DEFAULT NULL,
  `PBPortuques` decimal(4,2) DEFAULT NULL,
  `SBPortuques` decimal(4,2) DEFAULT NULL,
  `TBPortuques` decimal(4,2) DEFAULT NULL,
  `QBPortuques` decimal(4,2) DEFAULT NULL,
  `RecPortuques` decimal(4,2) DEFAULT NULL,
  `MPortuques` decimal(4,2) DEFAULT NULL,
  `PBMatematica` decimal(4,2) DEFAULT NULL,
  `SBMatematica` decimal(4,2) DEFAULT NULL,
  `TBMatematica` decimal(4,2) DEFAULT NULL,
  `QBMatematica` decimal(4,2) DEFAULT NULL,
  `RecMatematica` decimal(4,2) DEFAULT NULL,
  `MMatematica` decimal(4,2) DEFAULT NULL,
  `PBEdFisica` decimal(4,2) DEFAULT NULL,
  `SBEdFisica` decimal(4,2) DEFAULT NULL,
  `TBEdFisica` decimal(4,2) DEFAULT NULL,
  `QBEdFisica` decimal(4,2) DEFAULT NULL,
  `RecEdFisica` decimal(4,2) DEFAULT NULL,
  `MEdFisica` decimal(4,2) DEFAULT NULL,
  `PBEspanhol` decimal(4,2) DEFAULT NULL,
  `SBEspanhol` decimal(4,2) DEFAULT NULL,
  `TBEspanhol` decimal(4,2) DEFAULT NULL,
  `QBEspanhol` decimal(4,2) DEFAULT NULL,
  `RecEspanhol` decimal(4,2) DEFAULT NULL,
  `MEspanhol` decimal(4,2) DEFAULT NULL,
  `PBIngles` decimal(4,2) DEFAULT NULL,
  `SBIngles` decimal(4,2) DEFAULT NULL,
  `TBIngles` decimal(4,2) DEFAULT NULL,
  `QBIngles` decimal(4,2) DEFAULT NULL,
  `RecIngles` decimal(4,2) DEFAULT NULL,
  `MIngles` decimal(4,2) DEFAULT NULL,
  `PBQuimica` decimal(4,2) DEFAULT NULL,
  `SBQuimica` decimal(4,2) DEFAULT NULL,
  `TBQuimica` decimal(4,2) DEFAULT NULL,
  `QBQuimica` decimal(4,2) DEFAULT NULL,
  `RecQuimica` decimal(4,2) DEFAULT NULL,
  `MQuimica` decimal(4,2) DEFAULT NULL,
  `PBSociologia` decimal(4,2) DEFAULT NULL,
  `SBSociologia` decimal(4,2) DEFAULT NULL,
  `TBSociologia` decimal(4,2) DEFAULT NULL,
  `QBSociologia` decimal(4,2) DEFAULT NULL,
  `RecSociologia` decimal(4,2) DEFAULT NULL,
  `MSociologia` decimal(4,2) DEFAULT NULL,
  `turma` varchar(15) NOT NULL,
  `idAluno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas_produto`
--

CREATE TABLE `paginas_produto` (
  `id_produto` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `preco` int(11) NOT NULL,
  `estoque` int(11) NOT NULL,
  `id_fornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas_venda`
--

CREATE TABLE `paginas_venda` (
  `id_venda` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `data` datetime(6) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Índices para tabela `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Índices para tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Índices para tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Índices para tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Índices para tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Índices para tabela `paginas_cliente`
--
ALTER TABLE `paginas_cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `paginas_cliente_id_localizacao_d1baec16_fk_paginas_l` (`id_localizacao`);

--
-- Índices para tabela `paginas_fornecedor`
--
ALTER TABLE `paginas_fornecedor`
  ADD PRIMARY KEY (`id_fornecedor`),
  ADD KEY `paginas_fornecedor_id_localizacao_4e4b5ba6_fk_paginas_l` (`id_localizacao`);

--
-- Índices para tabela `paginas_horario`
--
ALTER TABLE `paginas_horario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `paginas_localizacao`
--
ALTER TABLE `paginas_localizacao`
  ADD PRIMARY KEY (`id_localizacao`);

--
-- Índices para tabela `paginas_notas`
--
ALTER TABLE `paginas_notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paginas_notas_idAluno_id_f854b8ce_fk_auth_user_id` (`idAluno_id`);

--
-- Índices para tabela `paginas_produto`
--
ALTER TABLE `paginas_produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `paginas_produto_id_fornecedor_c8a18331_fk_paginas_f` (`id_fornecedor`);

--
-- Índices para tabela `paginas_venda`
--
ALTER TABLE `paginas_venda`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `paginas_venda_id_cliente_a8b490f9_fk_paginas_cliente_id_cliente` (`id_cliente`),
  ADD KEY `paginas_venda_id_produto_d716fe5f_fk_paginas_produto_id_produto` (`id_produto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de tabela `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `paginas_cliente`
--
ALTER TABLE `paginas_cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `paginas_fornecedor`
--
ALTER TABLE `paginas_fornecedor`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `paginas_horario`
--
ALTER TABLE `paginas_horario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `paginas_localizacao`
--
ALTER TABLE `paginas_localizacao`
  MODIFY `id_localizacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `paginas_notas`
--
ALTER TABLE `paginas_notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `paginas_produto`
--
ALTER TABLE `paginas_produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `paginas_venda`
--
ALTER TABLE `paginas_venda`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limitadores para a tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limitadores para a tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `paginas_cliente`
--
ALTER TABLE `paginas_cliente`
  ADD CONSTRAINT `paginas_cliente_id_localizacao_d1baec16_fk_paginas_l` FOREIGN KEY (`id_localizacao`) REFERENCES `paginas_localizacao` (`id_localizacao`);

--
-- Limitadores para a tabela `paginas_fornecedor`
--
ALTER TABLE `paginas_fornecedor`
  ADD CONSTRAINT `paginas_fornecedor_id_localizacao_4e4b5ba6_fk_paginas_l` FOREIGN KEY (`id_localizacao`) REFERENCES `paginas_localizacao` (`id_localizacao`);

--
-- Limitadores para a tabela `paginas_notas`
--
ALTER TABLE `paginas_notas`
  ADD CONSTRAINT `paginas_notas_idAluno_id_f854b8ce_fk_auth_user_id` FOREIGN KEY (`idAluno_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `paginas_produto`
--
ALTER TABLE `paginas_produto`
  ADD CONSTRAINT `paginas_produto_id_fornecedor_c8a18331_fk_paginas_f` FOREIGN KEY (`id_fornecedor`) REFERENCES `paginas_fornecedor` (`id_fornecedor`);

--
-- Limitadores para a tabela `paginas_venda`
--
ALTER TABLE `paginas_venda`
  ADD CONSTRAINT `paginas_venda_id_cliente_a8b490f9_fk_paginas_cliente_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `paginas_cliente` (`id_cliente`),
  ADD CONSTRAINT `paginas_venda_id_produto_d716fe5f_fk_paginas_produto_id_produto` FOREIGN KEY (`id_produto`) REFERENCES `paginas_produto` (`id_produto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
