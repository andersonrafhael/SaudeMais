-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Fev-2020 às 05:29
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `saude+`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `answers`
--

CREATE TABLE `answers` (
  `cod_resp` int(11) NOT NULL,
  `desc_resp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cod_perg_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `answers`
--

INSERT INTO `answers` (`cod_resp`, `desc_resp`, `cod_perg_fk`) VALUES
(1, 'Sim', 1),
(2, 'Não', 1),
(3, 'Sim', 2),
(4, 'Não', 2),
(5, 'Sim', 3),
(6, 'Não', 3),
(7, 'Sim', 4),
(8, 'Não', 4),
(9, 'Sim', 5),
(10, 'Não', 5),
(11, 'Sim', 6),
(12, 'Não', 6),
(13, 'Sim', 7),
(14, 'Não', 7),
(15, 'Bom', 8),
(16, 'Ruim', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `baby`
--

CREATE TABLE `baby` (
  `semana` int(11) NOT NULL,
  `tamanho` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `peso` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `baby`
--

INSERT INTO `baby` (`semana`, `tamanho`, `peso`, `descricao`) VALUES
(1, NULL, NULL, 'O óvulo ainda consiste em uma única célula que, após certo tempo, se desprende do ovário e aguarda a fecundação.\r\n'),
(2, NULL, NULL, 'É onde acontece a fecundação. Se isso acontecer de forma efetiva, você está grávida. Ao ser fecundado, o óvulo passa a se chamar zigoto e começa a se dividir em diversas células enquanto se desloca até o útero'),
(3, NULL, NULL, 'O zigoto se fixa ao endométrio e continua sua multiplicação. Depois de um certo tempo, a placenta começa a se formar. Dificilmente a mamãe sentirá qualquer sintoma de gravidez nessa etapa. É importante lembrar que nessa fase podem ocorrer corrimentos vaginais que, embora pareçam, não comprometem a gestação. Esse corrimento é um típico sinal da nidação.'),
(4, 'Aprox. 1mm', NULL, 'O zigoto deverá estar medindo cerca de 1mm. Nessa fase, a mamãe pode começar a sentir algumas mudanças no seu corpo. Náuseas, vômitos, cansaço, sono, dores e inchaço nos seios são bastante comuns.\r\nA placenta começa a desenvolver os hormônios da gestação.'),
(5, 'Aprox. 2mm', NULL, 'É nessa semana que as mamães descobrem a gravidez. Agora o zigoto torna-se oficialmente um embrião, que continua seu desenvolvimento. O período compreendido entre a 4° e a 8° semana de gestação é considerado o de maior complexidade, visto que nessa etapa serão desenvolvidos boa parte do esqueleto, músculos, sistema nervoso e coração.'),
(6, '2 a 4mm', NULL, 'O cérebro do bebê está começando a se desenvolver e o coração dele já começa a bater.'),
(7, 'Até 13mm', NULL, 'Aqui acontece um rápido crescimento do embrião. O coração bate em ritmo acelerado e já bombeia sangue para todas as partes do corpo.\r\nForma-se um cordão umbilical e a placenta termina seu desenvolvimento'),
(8, '20mm', 'Cerca de 3g', 'As pequeninas e importantes partes já estão formadas, mas ainda irão crescer! Começam a se formar os ossos, órgão sexual e a face. O feto se movimenta de forma constante no líquido amniótico, mas a mamãe ainda não pode sentir.'),
(9, '28mm', 'Cerca de4g', 'O bebê agora tem um aspecto mais humano, apesar da cabeça ser bem maior que o resto do corpo. Os dedos já estão finalmente formados e o nariz e rosto ganham forma.\r\nApesar do útero ter dobrado de tamanho, ainda é provável que não se note que está grávida. Mas as roupas já podem começar a ficar apertadinhas! '),
(10, '31 a 42 mm', 'Aprox. 5g', 'Aqui se encerra o período embrionário e o seu bebê aumentou de tamanho cerca de 300 vezes! Mas ainda assim é preciso tomar cuidado com drogas e raios-x, pois podem comprometer o desenvolvimento do feto. O cérebro continua a crescer e produz cerca de 250 mil neurônios a cada minuto! O sistema nervoso começa a reagir e alguns órgãos passam a funcionar.'),
(11, 'Até 60mm', 'Cerca de 8g', 'Os órgãos vitais estão completamente formados. No corpo, começam a crescer alguns folículos e as unhas, a aparecer.'),
(12, '61mm', 'De 8 a 14g', 'O bebê já tem seu aspecto mais humano, as unhas crescem e o bebê começa a ser nutrido pela placenta. Ao mesmo tempo, a boca já consegue engolir os líquidos que envolvem o bebê'),
(13, 'Até 11cm', 'Cerca de 21g', 'Nessa semana, incia-se o 4° mês da sua gravidez. O feto começa a ficar com o aspecto de um recém-nascido, mesmo sendo bem pequeno. \r\nNessa etapa, os órgãos começam a se desenvolver em um ritmo mais acelerado e o bebê começa a urinar. Mas não se preocupe! O líquido amniótico é renovado em questão de algumas horas.'),
(14, '14cm', '25g', 'Seu bebê é do tamanho de um pêssego! Nessa etapa o feto é encoberto de uma fina camada de pelos (lanugo) sobre a pele. O lanugo o protegerá do contato frequente com o líquido amniótico e manterá sua temperatura corporal ajustada. Os olhos e orelhas já estão em seus devidos lugares e progridem com seu crescimento. As bochechas também começam a aparecer'),
(15, '14 a 16cm', 'Em torno de 50g', 'Os ossos estão se desenvolvendo melhor com o aumento do cálcio e os cabelos também crescem mais. A partir de agora é possível ver o sexo do bebê de forma clara'),
(16, 'Até 18cm', 'Aprox. 85g', 'Com o cérebro se desenvolvendo, seu bebê começa a fazer caretas e outras expressões faciais.  Agora os bracinhos e as perninhas bem desenvolvidos se movem com frequência, então você notará a atividade do bebê nas próximas semanas. Seu pequeno também está começando a ouvir, então esses movimentos podem ser em resposta ao som.'),
(17, '20cm', 'Cerca de 100g', 'Seu pequeno tem trabalhado em dois reflexos básicos há algumas semanas: A sucção e a deglutição. Até o momento de o bebê nascer, ele terá quase todos os mesmos reflexos que você tem. O bebê já começa a ter suas impressões digitais e a mamãe começa a sentir ele se mexendo. Uma camada de tecido adiposo se forma para a manutenção da temperatura corporal dele.'),
(18, '21cm', 'Aprox. 150g', 'Seu bebê é do tamanho de uma batata-doce! Agora ele consegue ouvir seu coração e alguns barulhos externos com mais facilidade e, em breve, também ouvirá sua voz.'),
(19, 'Cerca de 23cm', 'Aprox. 200g', 'Os sistemas circulatório, urinário e digestivo passam a funcionar totalmente. Os dentes crescem e está na hora de fazer alguns exames. Consulte seu médico para saber quais são.\r\nA partir de agora, é comum que a mamãe sinta dores nas costas.'),
(20, 'Cerca de 25cm', 'Aprox. 260g', 'Parabéns! Você acaba de chegar na metade da sua gravidez. A partir de agora, seu bebê crescerá cada vez mais rápido.\r\nEntre a 20° e 22° semana você deverá realizar uma ultrassom para avaliar o crescimento fetal e verificar se está tudo bem com o seu bebê.'),
(21, '26cm', 'Aprox. 350g', 'O sistema digestivo do bebê já funciona muito bem, engolindo alimentos líquidos ou sólidos. A partir de agora, o bebê poderá começar a soluçar e, em alguns casos, a mamãe poderá sentir esse soluço.\r\nAo final do dia, a mamãe pode se sentir mais cansada e inchada, principalmente se exercer alguma profissão que exija algum esforço físico.'),
(22, NULL, NULL, 'O cérebro continua seu desenvolvimento. As sobrancelhas, os cílios e as unhas estão formados>\r\nEstá é uma fase tranquila da gestação. A azia e os enjoos já passaram e está na hora de começar alguns preparativos para a chegada do bebê. '),
(23, 'Agora o bebê já mede 30cm', 'Um pouco mais do que 445g', 'O corpo do bebê está mais proporcional e já parece com um recém-nascido. Com a estrutura do ouvido desenvolvida, consegue distinguir os sons exteriores ao corpo da mãe.\r\nCaso ocorra um parto prematuro - o que com 23 semanas é considerado de muito risco -, talvez seja possível que o bebê sobreviva por meio de instrumentos'),
(24, 'Agora o bebê mede aprox. 32cm', 'Cerca de 540g', 'Os órgãos do bebê estão funcionando plenamente, com exceção dos pulmões, que ainda se desenvolverão até o parto. \r\nO bebê distingue claramente a voz da mãe dos outros sons. Se você já sabe o sexo do bebê e ainda não escolheu um nome, talvez seja a hora de fazê-lo. Ao escolher, converse com ele chamando-o pelo nome.'),
(25, 'O bebê está medindo 33cm', 'Aproximadamente 700g', 'As mãos começam a abrir e fechar e ele já consegue segurar os pés e dar cambalhotas no útero. A partir de agora, os chutes começarão a ser comuns. Além disso, o feto já consegue diferenciar a luz externa ao corpo da mamãe, que agora poderá começar a sentir dores ou incômodos nas costelas e na região lombar.'),
(26, NULL, NULL, ''),
(27, NULL, NULL, ''),
(28, NULL, NULL, ''),
(29, NULL, NULL, ''),
(30, NULL, NULL, ''),
(31, NULL, NULL, ''),
(32, NULL, NULL, ''),
(33, NULL, NULL, ''),
(34, NULL, NULL, ''),
(35, NULL, NULL, ''),
(36, NULL, NULL, ''),
(37, NULL, NULL, ''),
(38, NULL, NULL, ''),
(39, NULL, NULL, ''),
(40, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hosp_info`
--

CREATE TABLE `hosp_info` (
  `cod_hosp_info` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `horario` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `especialidades` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contato` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `cod_markers_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `hosp_info`
--

INSERT INTO `hosp_info` (`cod_hosp_info`, `nome`, `horario`, `especialidades`, `contato`, `cod_markers_fk`) VALUES
(1, 'Unidade de Saúde Village Campestre I', 'Segunda à Sexta: 07:00 - 17:00', 'Clínica Médica, Dermatologia, Pediatria', '(82) 3315-5448', 1),
(2, 'UPA Tabuleiro', 'Informação Ausente', 'Clínica Médica, Dermatologia, Pediatria', 'Informação Ausente', 2),
(3, 'Hospital Metropolitano de Maceió', 'Sem informação', 'Sem informação', 'Sem informação', 3),
(4, 'Hospital Universitário Prof. Alberto Antunes', 'Atendimento 24h', 'Clínica Médica, Ortopedia, Pediatria, Obstetrícia, Cirurgias, Ginecologia', '(82) 3202-3800', 4),
(5, 'Unidade de Saúde Vereador Sérgio Quintella', 'Segunda à Sexta: 07:00 - 17:00', 'Clínica Médica, Pediatria, Ginecologia', '(82) 3315-4342', 5),
(6, 'Unidade de Saúde Galba Novaes', 'Segunda à Sexta: 07:00 - 17:00', 'Pediatria, Obstetrícia, Clínica Médica', '(82) 3315-5445', 6),
(7, 'Unidade de Saúde Arthur Ramos', 'Sem informação', 'Pediatria, Obstetrícia, Clínica Médica', 'Sem informação', 7),
(8, 'UPA Benedito Bentes ', 'Atendimento 24h', 'Clínica Médica, Ortopedia, Cirurgias', '(82) 3313-7527', 8),
(9, 'Mini Pronto Socorro Assis Chateaubriand', 'Atendimento 24h', 'Sem informação', '(82) 3315-3504', 9),
(10, 'UBS José Pimentel Amorim', 'Segunda à Sexta: 07:00 - 18:00', 'Clínica Médica', 'Sem informação', 10),
(11, 'UBS Frei Damião', 'Segunda à Sexta: 07:30 - 11:00, 13:00 - 17:00', 'Clínica Médica', '(82) 3315-5483', 11),
(12, 'UBS - Dr. Djalma Loureiro', 'Segunda a Sexta: 07:00 às 18:00', 'Clínica Médica, Pediatria', '(82) 3315-5488', 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(1, 'Unidade de Saúde Village Campestre I', 'R. Celina Sacramento Silva, s/n - Village, Maceió - AL, 57073-200', -9.551668, -35.752926, 'Posto de Saúde'),
(2, 'UPA Tabuleiro', 'Av. Durval de Góes Monteiro, 350 - Tabuleiro do Martins, Maceió - AL, 57061-000', -9.570750, -35.770676, 'UPA'),
(3, 'Hospital Metropolitano de Maceió', 'Av. Menino Marcelo, 9526-9672 - Barro Duro, Maceió - AL, 57083-410', -9.559027, -35.764153, 'Hospital'),
(4, 'Hospital Universitário Prof. Alberto Antunes', 'Av. Lourival Melo Mota, S/N - Tabuleiro do Martins, Maceió - AL, 57072-970', -9.558492, -35.777870, 'Hospital'),
(5, 'Unidade de Saúde Vereador Sérgio Quintella', 'R. Des. Carlos de Gusmão, 2-110 - Santa Lúcia, Maceió - AL, 57082-300', -9.569820, -35.751236, 'Posto de Saúde'),
(6, 'Unidade de Saúde Galba Novaes', 'Av. Betel, s/n - Tabuleiro do Martins, Maceió - AL, 57081-740', -9.570568, -35.754951, 'UPA'),
(7, 'Unidade de Saúde Arthur Ramos', 'Conjunto Henrique Hequelman, R.I. s/n (perto do terminal de ônibus), Maceió - AL', -9.563726, -35.739948, 'Posto de Saúde'),
(8, 'UPA Benedito Bentes - 24h', 'Av. Antônio Lisboa de Amorim, s/n - Benedito Bentes, Maceió - AL, 57085-160', -9.550605, -35.733856, 'UPA'),
(9, 'Mini Pronto Socorro Assis Chateaubriand', 'Av. Durval de Góes Monteiro, 1510 - Tabuleiro do Martins, Maceió - AL, 57080-000', -9.576673, -35.770729, 'UPA'),
(10, 'UBS José Pimentel Amorim', 'Av. Alberto Alves da Câmara, 158 - Tabuleiro do Martins, Maceió - AL, 57081-185', -9.562609, -35.754879, 'UBS'),
(11, 'UBS Frei Damião', 'Av. Mundaú - Benedito Bentes, Maceió - AL, 57085-778', -9.556090, -35.721832, 'UBS'),
(12, 'UBS - Dr. Djalma Loureiro', 'Av. Muniz Falcão, s/n - Clima Bom, Maceió - AL, 57071-815', -9.571728, -35.783066, 'UBS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `qst_user`
--

CREATE TABLE `qst_user` (
  `cod_qst_usr` int(11) NOT NULL,
  `cod_perg_fk` int(11) NOT NULL,
  `cod_resp_fk` int(11) NOT NULL,
  `cod_qst_fk` int(11) NOT NULL,
  `cod_usr_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `qst_user`
--

INSERT INTO `qst_user` (`cod_qst_usr`, `cod_perg_fk`, `cod_resp_fk`, `cod_qst_fk`, `cod_usr_fk`) VALUES
(17, 1, 2, 1, 10),
(18, 2, 4, 1, 10),
(19, 3, 5, 1, 10),
(20, 4, 8, 1, 10),
(21, 5, 9, 1, 10),
(22, 6, 11, 1, 10),
(23, 7, 13, 1, 10),
(24, 8, 16, 1, 10),
(25, 1, 1, 1, 39),
(26, 2, 4, 1, 39),
(27, 3, 5, 1, 39),
(28, 4, 7, 1, 39),
(29, 5, 10, 1, 39),
(30, 6, 11, 1, 39),
(31, 7, 13, 1, 39),
(32, 8, 15, 1, 39);

-- --------------------------------------------------------

--
-- Estrutura da tabela `questionnaire`
--

CREATE TABLE `questionnaire` (
  `cod_qst` int(11) NOT NULL,
  `desc_qst` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `questionnaire`
--

INSERT INTO `questionnaire` (`cod_qst`, `desc_qst`) VALUES
(1, 'Mini Anamnese');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questions`
--

CREATE TABLE `questions` (
  `cod_perg` int(11) NOT NULL,
  `desc_perg` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cod_qst_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `questions`
--

INSERT INTO `questions` (`cod_perg`, `desc_perg`, `cod_qst_fk`) VALUES
(1, 'Diabetes?', 1),
(2, 'Hipo/Hipertensão Arterial?', 1),
(3, 'Tabagismo?', 1),
(4, 'Ingere algum tipo de bebida alcoólica?', 1),
(5, 'Pratica alguma atividade física?', 1),
(6, 'Sofre de estresse?', 1),
(7, 'Gestante?', 1),
(8, 'Qualidade do sono?', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `usr_cod` int(11) NOT NULL,
  `usr_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `usr_login` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `entry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`usr_cod`, `usr_name`, `usr_login`, `usr_password`, `entry_date`) VALUES
(10, 'Anderson Rafhael de GusmÃ£o Barbosa', 'andersonrafhael', '202cb962ac59075b964b07152d234b70', '0000-00-00'),
(12, 'Igor Rocha', 'igortroll', '8b9cade6c7841550cc181a879d9e6c82', '0000-00-00'),
(18, 'Lucas Rozendo', 'lucasr', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00'),
(19, 'teste', 'teste', '202cb962ac59075b964b07152d234b70', '0000-00-00'),
(20, '<script>alert(\\\'xss\\\')</script>', 'asdasd', '7815696ecbf1c96e6894b779456d330e', NULL),
(21, 'Renata Silva Mota', 'Renata Mota', '757f0b059e322580a21e972f07bf6836', NULL),
(22, 'Caio Gomes de Oliveira', 'Caiogo', 'f79a3cf12af6c3aaeeeabbee67327583', NULL),
(24, 'consegui', 'consegui', '202cb962ac59075b964b07152d234b70', NULL),
(26, 'teste2', 'teste2', '202cb962ac59075b964b07152d234b70', NULL),
(27, 'Walmer almeida cavalcante', 'Walmer', '619cebc2f57db4ac8a12503892f10dce', NULL),
(28, 'João Paulo Agostinho da Silva', 'João Paulo', 'e99a18c428cb38d5f260853678922e03', NULL),
(29, 'Janielly Silva Padilha', 'Janiellysp', 'ee73b54264c00a0135a0b6c837b03de7', NULL),
(30, 'Teste4', 'teste4', '202cb962ac59075b964b07152d234b70', NULL),
(31, 'Luana lima', 'Luana123', '827ccb0eea8a706c4c34a16891f84e7b', NULL),
(32, 'Vou me cadastrar', 'Ultima', '827ccb0eea8a706c4c34a16891f84e7b', NULL),
(33, 'Marcos Leano', 'Marcos', '25d55ad283aa400af464c76d713c07ad', NULL),
(34, 'Arthur Henrique Ferreira Santos', 'ExDTucasP90SoHS', 'efad52b6fcae63677fe30c7ccc8d77e5', NULL),
(35, 'Márcia Valéria', 'mvaleria', '4e297259e7284914d92430a76a11c00a', NULL),
(36, 'João do morro', 'João ', 'ff464781f4c4de4e97fe5b585d8a4c81', NULL),
(37, 'teste5', 'teste5', '202cb962ac59075b964b07152d234b70', NULL),
(38, 'TESTE DE SOFTWARE', 'TESTEDESOFT', '202cb962ac59075b964b07152d234b70', NULL),
(39, 'Engenharia de Software', 'engsoft', '202cb962ac59075b964b07152d234b70', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`cod_resp`);

--
-- Índices para tabela `baby`
--
ALTER TABLE `baby`
  ADD PRIMARY KEY (`semana`);

--
-- Índices para tabela `hosp_info`
--
ALTER TABLE `hosp_info`
  ADD PRIMARY KEY (`cod_hosp_info`);

--
-- Índices para tabela `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `qst_user`
--
ALTER TABLE `qst_user`
  ADD PRIMARY KEY (`cod_qst_usr`);

--
-- Índices para tabela `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`cod_qst`);

--
-- Índices para tabela `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`cod_perg`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usr_cod`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `answers`
--
ALTER TABLE `answers`
  MODIFY `cod_resp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `baby`
--
ALTER TABLE `baby`
  MODIFY `semana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `hosp_info`
--
ALTER TABLE `hosp_info`
  MODIFY `cod_hosp_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `qst_user`
--
ALTER TABLE `qst_user`
  MODIFY `cod_qst_usr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `cod_qst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `questions`
--
ALTER TABLE `questions`
  MODIFY `cod_perg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `usr_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
