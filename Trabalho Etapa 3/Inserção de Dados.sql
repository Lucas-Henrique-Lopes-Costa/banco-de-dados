use BD_Trabalho;

-- Inserindo dados na tabela Pessoa
INSERT INTO `Pessoa` (`ehCliente`) VALUES
(1), (0), (1), (0), (1), (1), (0), (1), (0), (0),
(1), (1), (0), (1), (0), (0), (1), (1), (0), (0),
(1), (0), (1), (0), (1), (0), (0), (1), (0), (1),
(1), (0), (1), (0), (1), (0), (0), (1), (1), (0),
(0), (1), (1), (0), (1), (0), (1), (1), (0), (0);


-- Inserindo dados na tabela PessoaFone
INSERT INTO `PessoaFone` (`Pessoa_idPessoa`, `fone`) VALUES
(1, '+5511987654321'),
(2, '+5511998765432'),
(3, '+5511908765432'),
(4, '+5511923456789'),
(5, '+5511981234567'),
(6, '+5511976543210'),
(7, '+5511965432109'),
(8, '+5511954321098'),
(9, '+5511943210987'),
(10, '+5511932109876'),
(11, '+5511921098765'),
(12, '+5511910987654'),
(13, '+5511909876543'),
(14, '+5511898765432'),
(15, '+5511887654321'),
(16, '+5511876543210'),
(17, '+5511865432109'),
(18, '+5511854321098'),
(19, '+5511843210987'),
(20, '+5511832109876'),
(21, '+5511821098765'),
(22, '+5511810987654'),
(23, '+5511809876543'),
(24, '+5511798765432'),
(25, '+5511787654321'),
(26, '+5511776543210'),
(27, '+5511765432109'),
(28, '+5511754321098'),
(29, '+5511743210987'),
(30, '+5511732109876'),
(31, '+5511721098765'),
(32, '+5511710987654'),
(33, '+5511709876543'),
(34, '+5511698765432'),
(35, '+5511687654321'),
(36, '+5511676543210'),
(37, '+5511665432109'),
(38, '+5511654321098'),
(39, '+5511643210987'),
(40, '+5511632109876'),
(41, '+5511621098765'),
(42, '+5511610987654'),
(43, '+5511609876543'),
(44, '+5511598765432'),
(45, '+5511587654321'),
(46, '+5511576543210'),
(47, '+5511565432109'),
(48, '+5511554321098'),
(49, '+5511543210987'),
(50, '+5511532109876'),
-- Adicionando múltiplos telefones para algumas pessoas
(8, '+5511923456789'),
(11, '+5511987654321'),
(11, '+5511965432109'),
(49, '+5511943210987'),
(17, '+5511921098765');


-- Inserindo dados na tabela PessoaFisica
INSERT INTO `PessoaFisica` (`Pessoa_idPessoa`, `cpf`, `nome`) VALUES
(1, '12345678901', 'João Silva'),
(2, '23456789012', 'Maria Santos'),
(4, '34567890123', 'Pedro Oliveira'),
(5, '45678901234', 'Ana Costa'),
(7, '56789012345', 'Carlos Pereira'),
(9, '67890123456', 'Paula Souza'),
(10, '78901234567', 'Rafael Lima'),
(12, '89012345678', 'Fernanda Alves'),
(14, '90123456789', 'Juliana Machado'),
(15, '01234567890', 'Rodrigo Araujo'),
(17, '12345098765', 'Mariana Teixeira'),
(18, '23456098765', 'Thiago Barbosa'),
(20, '34567098765', 'Beatriz Ferreira'),
(22, '45678098765', 'Gabriel Mendes'),
(24, '56789098765', 'Larissa Rodrigues'),
(25, '67890098765', 'Lucas Dias'),
(27, '78901098765', 'Marcela Souza'),
(28, '89012098765', 'Renato Martins'),
(30, '90123098765', 'Bianca Silva'),
(32, '01234098765', 'Leonardo Almeida'),
(33, '12345097654', 'Aline Castro'),
(35, '23456097654', 'Vinicius Pinto'),
(37, '34567097654', 'Amanda Cardoso'),
(38, '45678097654', 'Renan Gomes'),
(40, '56789097654', 'Patrícia Ribeiro'),
(42, '67890097654', 'Igor Fernandes'),
(43, '78901097654', 'Débora Nunes'),
(45, '89012097654', 'Gustavo Carvalho'),
(47, '90123097654', 'Letícia Lima'),
(48, '01234097654', 'Diego Lopes'),
(50, '12345096543', 'Isabela Sousa'),
(3, '23456096543', 'Bruno Rocha'),
(8, '34567096543', 'Sabrina Ramos'),
(21, '45678096543', 'Joana Martins');


-- Inserindo dados na tabela PessoaJuridica
INSERT INTO `PessoaJuridica` (`Pessoa_idPessoa`, `cnpj`, `razaoSocial`, `nomeFantasia`, `fornecedor`, `transportadora`) VALUES
(6, '12345678000101', 'Empresa A', 'Fantasia A', 1, 0),
(11, '23456789000101', 'Empresa B', 'Fantasia B', 0, 1),
(13, '34567890000101', 'Empresa C', 'Fantasia C', 1, 1),
(16, '45678901000101', 'Empresa D', 'Fantasia D', 1, 0),
(19, '56789012000101', 'Empresa E', 'Fantasia E', 0, 1),
(23, '67890123000101', 'Empresa F', 'Fantasia F', 1, 1),
(26, '78901234000101', 'Empresa G', 'Fantasia G', 1, 0),
(29, '89012345000101', 'Empresa H', 'Fantasia H', 0, 1),
(31, '90123456000101', 'Empresa I', 'Fantasia I', 1, 1),
(34, '01234567000101', 'Empresa J', 'Fantasia J', 1, 0),
(36, '12345678000102', 'Empresa K', 'Fantasia K', 0, 1),
(39, '23456789000102', 'Empresa L', 'Fantasia L', 1, 1),
(41, '34567890000102', 'Empresa M', 'Fantasia M', 1, 0),
(44, '45678901000102', 'Empresa N', 'Fantasia N', 0, 1),
(46, '56789012000102', 'Empresa O', 'Fantasia O', 1, 1),
(49, '67890123000102', 'Empresa P', 'Fantasia P', 1, 0);


-- Inserindo dados na tabela Vendedor
INSERT INTO `Vendedor` (`PessoaFisica_Pessoa_idPessoa`, `numRegistro`, `dataAdimissao`) VALUES
(1, 1001, '2022-01-15'),
(2, 1002, '2022-02-20'),
(4, 1003, '2022-03-10'),
(7, 1004, '2022-04-05'),
(10, 1005, '2022-05-18'),
(12, 1006, '2022-06-25'),
(15, 1007, '2022-07-30'),
(18, 1008, '2022-08-12');


-- Inserindo dados na tabela Pedido
INSERT INTO `Pedido` (`Pessoa_idPessoa`, `dataPedido`, `situacao`) VALUES
(1, '2024-01-01', 'entregue'),
(1, '2024-01-15', 'processando'),
(3, '2024-01-20', 'entregue'),
(3, '2024-01-25', 'cancelado'),
(5, '2024-02-01', 'transito'),
(5, '2024-02-10', 'entregue'),
(6, '2024-02-15', 'processando'),
(6, '2024-02-18', 'entregue'),
(8, '2024-03-01', 'entregue'),
(8, '2024-03-05', 'cancelado'),
(8, '2024-03-10', 'processando'),
(11, '2024-03-15', 'transito'),
(11, '2024-03-20', 'entregue'),
(12, '2024-04-01', 'entregue'),
(12, '2024-04-05', 'processando'),
(13, '2024-04-10', 'cancelado'),
(13, '2024-04-15', 'entregue'),
(14, '2024-04-20', 'transito'),
(14, '2024-04-25', 'processando'),
(16, '2024-05-01', 'entregue'),
(16, '2024-05-05', 'cancelado'),
(17, '2024-05-10', 'entregue'),
(17, '2024-05-15', 'transito'),
(18, '2024-05-20', 'processando'),
(18, '2024-05-25', 'cancelado'),
(19, '2024-06-01', 'entregue'),
(19, '2024-06-05', 'transito'),
(21, '2024-06-10', 'entregue'),
(21, '2024-06-15', 'processando'),
(23, '2024-06-20', 'cancelado'),
(23, '2024-06-25', 'entregue'),
(25, '2024-07-01', 'transito'),
(25, '2024-07-05', 'entregue'),
(26, '2024-07-10', 'processando'),
(26, '2024-07-15', 'entregue'),
(28, '2024-07-20', 'transito'),
(28, '2024-07-25', 'processando'),
(29, '2024-08-01', 'entregue'),
(29, '2024-08-05', 'cancelado'),
(30, '2024-08-10', 'transito'),
(30, '2024-08-15', 'processando'),
(31, '2024-08-20', 'entregue'),
(31, '2024-08-25', 'cancelado'),
(33, '2024-09-01', 'entregue'),
(33, '2024-09-05', 'transito'),
(34, '2024-09-10', 'processando'),
(34, '2024-09-15', 'entregue'),
(35, '2024-09-20', 'cancelado'),
(35, '2024-09-25', 'transito'),
(36, '2024-10-01', 'processando'),
(36, '2024-10-05', 'entregue'),
(38, '2024-10-10', 'cancelado'),
(38, '2024-10-15', 'transito'),
(39, '2024-10-20', 'processando'),
(39, '2024-10-25', 'entregue'),
(41, '2024-11-01', 'cancelado'),
(41, '2024-11-05', 'transito'),
(42, '2024-11-10', 'processando'),
(42, '2024-11-15', 'entregue'),
(43, '2024-11-20', 'cancelado'),
(43, '2024-11-25', 'transito'),
(44, '2024-12-01', 'processando'),
(44, '2024-12-05', 'entregue'),
(45, '2024-12-10', 'cancelado'),
(45, '2024-12-15', 'transito'),
(46, '2024-12-20', 'processando'),
(46, '2024-12-25', 'entregue'),
(47, '2025-01-01', 'cancelado'),
(47, '2025-01-05', 'transito'),
(48, '2025-01-10', 'processando'),
(48, '2025-01-15', 'entregue'),
(49, '2025-01-20', 'cancelado'),
(49, '2025-01-25', 'transito'),
(3, '2025-02-01', 'entregue'),
(5, '2025-02-05', 'transito'),
(6, '2025-02-10', 'processando'),
(8, '2025-02-15', 'entregue'),
(11, '2025-02-20', 'cancelado'),
(12, '2025-02-25', 'transito'),
(13, '2025-03-01', 'processando'),
(14, '2025-03-05', 'entregue'),
(16, '2025-03-10', 'cancelado'),
(17, '2025-03-15', 'transito'),
(18, '2025-03-20', 'processando'),
(19, '2025-03-25', 'entregue'),
(21, '2025-04-01', 'cancelado'),
(23, '2025-04-05', 'transito'),
(25, '2025-04-10', 'processando'),
(26, '2025-04-15', 'entregue'),
(28, '2025-04-20', 'cancelado'),
(29, '2025-04-25', 'transito'),
(30, '2025-05-01', 'processando'),
(31, '2025-05-05', 'entregue'),
(33, '2025-05-10', 'cancelado'),
(34, '2025-05-15', 'transito'),
(35, '2025-05-20', 'processando'),
(36, '2025-05-25', 'entregue'),
(38, '2025-06-01', 'cancelado'),
(39, '2025-06-05', 'transito'),
(41, '2025-06-10', 'processando'),
(42, '2025-06-15', 'entregue'),
(43, '2025-06-20', 'cancelado'),
(44, '2025-06-25', 'transito'),
(45, '2025-07-01', 'processando'),
(46, '2025-07-05', 'entregue'),
(47, '2025-07-10', 'cancelado'),
(48, '2025-07-15', 'transito'),
(49, '2025-07-20', 'processando'),
(1, '2025-07-25', 'entregue'),
(3, '2025-08-01', 'cancelado'),
(5, '2025-08-05', 'transito'),
(6, '2025-08-10', 'processando'),
(8, '2025-08-15', 'entregue'),
(11, '2025-08-20', 'cancelado'),
(12, '2025-08-25', 'transito'),
(13, '2025-09-01', 'processando'),
(14, '2025-09-05', 'entregue'),
(16, '2025-09-10', 'cancelado'),
(17, '2025-09-15', 'transito'),
(18, '2025-09-20', 'processando'),
(19, '2025-09-25', 'entregue'),
(21, '2025-10-01', 'cancelado'),
(23, '2025-10-05', 'transito'),
(25, '2025-10-10', 'processando'),
(26, '2025-10-15', 'entregue'),
(28, '2025-10-20', 'cancelado'),
(29, '2025-10-25', 'transito');


-- Inserindo dados na tabela PedidoVenda
INSERT INTO `PedidoVenda` (`Pedido_id`, `Vendedor_PessoaFisica_Pessoa_idPessoa`, `tipoDeVenda`, `possuiOrcamento`) VALUES
(1, 1, 'F', 1),
(3, 1, 'O', 0),
(5, 1, 'F', 1),
(6, 1, 'F', 0),
(8, 2, 'O', 1),
(11, 2, 'F', 0),
(13, 2, 'F', 1),
(14, 2, 'O', 0),
(16, 4, 'F', 1),
(17, 4, 'F', 0),
(19, 4, 'O', 1),
(21, 4, 'F', 0),
(23, 4, 'F', 1),
(25, 7, 'F', 0),
(26, 7, 'O', 1),
(28, 7, 'F', 0),
(29, 7, 'F', 1),
(31, 7, 'O', 0),
(33, 10, 'F', 1),
(34, 10, 'O', 0),
(36, 10, 'F', 1),
(38, 10, 'F', 0),
(39, 10, 'O', 1),
(41, 12, 'F', 0),
(42, 12, 'O', 1),
(44, 12, 'F', 0),
(45, 12, 'F', 1),
(47, 12, 'O', 0),
(49, 15, 'F', 1),
(51, 15, 'F', 0),
(52, 15, 'O', 1),
(54, 15, 'F', 0),
(55, 15, 'F', 1),
(57, 15, 'O', 0),
(59, 15, 'F', 1),
(61, 18, 'O', 0),
(63, 18, 'F', 1),
(64, 18, 'F', 0),
(66, 18, 'O', 1),
(67, 18, 'F', 0),
(69, 18, 'F', 1),
(71, 18, 'O', 0),
(73, 1, 'F', 1),
(74, 1, 'F', 0),
(76, 1, 'O', 1),
(78, 1, 'F', 0),
(79, 1, 'F', 1),
(81, 2, 'O', 0),
(83, 2, 'F', 1),
(84, 2, 'F', 0),
(86, 2, 'O', 1),
(87, 2, 'F', 0),
(89, 4, 'F', 1),
(91, 4, 'O', 0),
(92, 4, 'F', 1),
(94, 4, 'F', 0),
(95, 7, 'O', 1),
(97, 7, 'F', 0),
(98, 7, 'F', 1),
(100, 7, 'O', 0),
(101, 7, 'F', 1),
(103, 10, 'F', 0),
(105, 10, 'O', 1),
(106, 10, 'F', 0),
(108, 10, 'F', 1),
(109, 10, 'O', 0),
(111, 12, 'F', 1),
(112, 12, 'O', 0),
(114, 12, 'F', 1),
(115, 12, 'F', 0),
(117, 12, 'O', 1),
(118, 15, 'F', 0),
(120, 15, 'F', 1),
(122, 15, 'O', 0),
(123, 15, 'F', 1),
(125, 15, 'O', 0),
(127, 15, 'F', 1);


-- Inserindo dados na tabela PedidoCompra
INSERT INTO `PedidoCompra` (`Pedido_id`) VALUES
(2),
(4),
(7),
(9),
(10),
(12),
(15),
(18),
(20),
(22),
(24),
(27),
(30),
(32),
(35),
(37),
(40),
(43),
(46),
(48),
(50),
(53),
(56),
(58),
(60),
(62),
(65),
(68),
(70),
(72),
(75),
(77),
(80),
(82),
(85),
(88),
(90),
(93),
(96),
(99),
(102),
(104),
(107),
(110),
(113),
(116),
(119),
(121),
(124),
(126);


-- Inserindo dados na tabela Produto
INSERT INTO Produto (codProd, descricao, precoVenda, qtdeEstoque, marca, nome, material, cor) VALUES
(1, 'Camiseta básica de algodão', 29.90, 50, 'Marca A', 'Camiseta', 'Algodão', 'Branca'),
(2, 'Calça jeans skinny', 89.90, 30, 'Marca B', 'Calça Jeans', 'Jeans', 'Azul'),
(3, 'Blusa de manga longa', 59.90, 40, 'Marca C', 'Blusa', 'Malha', 'Preta'),
(4, 'Vestido floral curto', 119.90, 20, 'Marca D', 'Vestido', 'Viscose', 'Floral'),
(5, 'Jaqueta de couro sintético', 199.90, 15, 'Marca E', 'Jaqueta', 'Couro Sintético', 'Preta'),
(6, 'Saia midi plissada', 79.90, 25, 'Marca F', 'Saia', 'Poliéster', 'Vermelha'),
(7, 'Camisa social slim fit', 99.90, 35, 'Marca G', 'Camisa', 'Algodão', 'Azul Claro'),
(8, 'Bermuda cargo', 69.90, 40, 'Marca H', 'Bermuda', 'Sarja', 'Bege'),
(9, 'Blazer masculino', 249.90, 10, 'Marca I', 'Blazer', 'Lã', 'Cinza'),
(10, 'Moletom canguru', 89.90, 30, 'Marca J', 'Moletom', 'Algodão', 'Cinza'),
(11, 'Calça legging esportiva', 49.90, 50, 'Marca K', 'Calça Legging', 'Poliamida', 'Preta'),
(12, 'Shorts jeans', 59.90, 20, 'Marca L', 'Shorts', 'Jeans', 'Azul Claro'),
(13, 'Regata básica', 19.90, 60, 'Marca M', 'Regata', 'Algodão', 'Branca'),
(14, 'Polo masculina', 79.90, 25, 'Marca N', 'Polo', 'Piquet', 'Verde'),
(15, 'Macacão feminino longo', 139.90, 15, 'Marca O', 'Macacão', 'Viscose', 'Estampado'),
(16, 'Suéter de lã', 129.90, 20, 'Marca P', 'Suéter', 'Lã', 'Vermelho');


-- Inserindo dados na tabela OrcCompra
INSERT INTO `OrcCompra` (`dataCotacao`, `PessoaJuridica_Pessoa_idPessoa`, `precoCotado`, `dataValidade`, `prazoEntregaDias`, `PedidoCompra_Pedido_id`) VALUES
('2024-01-01', 6, 1500.00, '2024-01-15', 7, 2),
('2024-01-05', 11, 1400.00, '2024-01-20', 10, 2),
('2024-01-10', 13, 1600.00, '2024-01-25', 5, 4),
('2024-01-15', 16, 1550.00, '2024-01-30', 12, 4),
('2024-01-20', 19, 1300.00, '2024-02-05', 14, 7),
('2024-01-25', 23, 1700.00, '2024-02-10', 8, 9),
('2024-02-01', 26, 1350.00, '2024-02-15', 10, 10),
('2024-02-05', 29, 1750.00, '2024-02-20', 7, 12),
('2024-02-10', 31, 1450.00, '2024-02-25', 5, 15),
('2024-02-15', 34, 1600.00, '2024-03-01', 14, 18),
('2024-02-20', 36, 1500.00, '2024-03-05', 12, 20),
('2024-02-25', 39, 1550.00, '2024-03-10', 10, 22),
('2024-03-01', 41, 1700.00, '2024-03-15', 8, 24),
('2024-03-05', 44, 1650.00, '2024-03-20', 5, 27),
('2024-03-10', 46, 1300.00, '2024-03-25', 14, 30),
('2024-03-15', 49, 1450.00, '2024-03-30', 7, 32),
('2024-03-20', 6, 1500.00, '2024-04-05', 10, 35),
('2024-03-25', 11, 1400.00, '2024-04-10', 8, 37),
('2024-04-01', 13, 1600.00, '2024-04-15', 5, 40),
('2024-04-05', 16, 1550.00, '2024-04-20', 12, 43),
('2024-04-10', 19, 1300.00, '2024-04-25', 10, 46),
('2024-04-15', 23, 1700.00, '2024-04-30', 7, 48),
('2024-04-20', 26, 1350.00, '2024-05-05', 14, 50),
('2024-04-25', 29, 1750.00, '2024-05-10', 10, 53),
('2024-05-01', 31, 1450.00, '2024-05-15', 12, 56),
('2024-05-05', 34, 1600.00, '2024-05-20', 8, 58),
('2024-05-10', 36, 1500.00, '2024-05-25', 5, 60),
('2024-05-15', 39, 1550.00, '2024-05-30', 14, 62),
('2024-05-20', 41, 1700.00, '2024-06-05', 7, 65),
('2024-05-25', 44, 1650.00, '2024-06-10', 10, 68),
('2024-06-01', 46, 1300.00, '2024-06-15', 12, 70),
('2024-06-05', 49, 1450.00, '2024-06-20', 14, 72),
('2024-06-10', 6, 1500.00, '2024-06-25', 10, 75),
('2024-06-15', 11, 1400.00, '2024-06-30', 5, 77),
('2024-06-20', 13, 1600.00, '2024-07-05', 7, 80),
('2024-06-25', 16, 1550.00, '2024-07-10', 8, 82),
('2024-07-01', 19, 1300.00, '2024-07-15', 14, 85),
('2024-07-05', 23, 1700.00, '2024-07-20', 12, 88),
('2024-07-10', 26, 1350.00, '2024-07-25', 10, 90),
('2024-07-15', 29, 1750.00, '2024-07-30', 7, 93),
('2024-07-20', 31, 1450.00, '2024-08-05', 14, 96),
('2024-07-25', 34, 1600.00, '2024-08-10', 12, 99),
('2024-08-01', 36, 1500.00, '2024-08-15', 10, 102),
('2024-08-05', 39, 1550.00, '2024-08-20', 8, 104),
('2024-08-10', 41, 1700.00, '2024-08-25', 5, 107),
('2024-08-15', 44, 1650.00, '2024-08-30', 14, 110),
('2024-08-20', 46, 1300.00, '2024-09-05', 12, 113),
('2024-08-25', 49, 1450.00, '2024-09-10', 10, 116),
('2024-09-01', 6, 1500.00, '2024-09-15', 8, 119),
('2024-09-05', 11, 1400.00, '2024-09-20', 14, 121),
('2024-09-10', 13, 1600.00, '2024-09-25', 12, 124),
('2024-09-15', 16, 1550.00, '2024-09-30', 10, 126),
('2024-09-20', 19, 1300.00, '2024-10-05', 14, NULL),
('2024-09-25', 23, 1700.00, '2024-10-10', 8, NULL),
('2024-10-01', 26, 1350.00, '2024-10-15', 10, NULL),
('2024-10-05', 29, 1750.00, '2024-10-20', 12, NULL),
('2024-10-10', 31, 1450.00, '2024-10-25', 7, NULL),
('2024-10-15', 34, 1600.00, '2024-10-30', 5, NULL),
('2024-10-20', 36, 1500.00, '2024-11-05', 10, NULL),
('2024-10-25', 39, 1550.00, '2024-11-10', 12, NULL),
('2024-11-01', 41, 1700.00, '2024-11-15', 14, NULL),
('2024-11-05', 44, 1650.00, '2024-11-20', 8, NULL),
('2024-11-10', 46, 1300.00, '2024-11-25', 10, NULL),
('2024-11-15', 49, 1450.00, '2024-11-30', 7, NULL),
('2024-11-20', 6, 1500.00, '2024-12-05', 5, NULL),
('2024-11-25', 11, 1400.00, '2024-12-10', 12, NULL),
('2024-12-01', 13, 1600.00, '2024-12-15', 10, NULL),
('2024-12-05', 16, 1550.00, '2024-12-20', 14, NULL),
('2024-12-10', 19, 1300.00, '2024-12-25', 8, NULL),
('2024-12-15', 23, 1700.00, '2024-12-30', 10, NULL),
('2024-12-20', 26, 1350.00, '2025-01-05', 7, NULL);


-- Inserindo dados na tabela Lead
INSERT INTO `Lead` (`PessoaFisica_Pessoa_idPessoa`, `plataformaOrigem`, `idAnuncio`, `dataCadastro`) VALUES
(1, 11, 101, '2024-01-10'),
(3, 22, 102, '2024-01-15'),
(5, 33, 103, '2024-01-20'),
(7, 11, 104, '2024-01-25'),
(9, 22, 105, '2024-01-30'),
(10, 33, 101, '2024-02-05'),
(12, 11, 102, '2024-02-10'),
(14, 22, 103, '2024-02-15'),
(15, 33, 104, '2024-02-20'),
(17, 11, 105, '2024-02-25'),
(18, 22, 101, '2024-03-01'),
(21, 33, 102, '2024-03-05'),
(22, 11, 103, '2024-03-10'),
(24, 22, 104, '2024-03-15'),
(25, 33, 105, '2024-03-20'),
(28, 11, 101, '2024-03-25'),
(30, 22, 102, '2024-03-30'),
(32, 33, 103, '2024-04-05'),
(33, 11, 104, '2024-04-10'),
(35, 22, 105, '2024-04-15'),
(38, 33, 101, '2024-04-20'),
(40, 11, 102, '2024-04-25');


-- Inserindo dados na tabela CompoeOrcCompra
INSERT INTO `CompoeOrcCompra` (`OrcCompra_dataCotacao`, `OrcCompra_PessoaJuridica_Pessoa_idPessoa`, `Produto_codProd`, `quantidade`, `preco`) VALUES
('2024-01-01', 6, 1, 10, 29.90),
('2024-01-01', 6, 2, 5, 89.90),
('2024-01-01', 6, 3, 20, 59.90),
('2024-03-20', 6, 4, 15, 119.90),
('2024-03-20', 6, 5, 8, 199.90),
('2024-06-10', 6, 6, 12, 79.90),
('2024-09-01', 6, 7, 18, 99.90),
('2024-11-20', 6, 8, 20, 69.90),
('2024-01-05', 11, 9, 5, 249.90),
('2024-01-05', 11, 10, 10, 89.90),
('2024-01-05', 11, 11, 25, 49.90),
('2024-03-25', 11, 12, 12, 59.90),
('2024-06-15', 11, 13, 15, 19.90),
('2024-09-05', 11, 14, 7, 79.90),
('2024-11-25', 11, 15, 8, 139.90),
('2024-01-10', 13, 16, 20, 129.90),
('2024-01-10', 13, 1, 30, 29.90),
('2024-04-01', 13, 2, 12, 89.90),
('2024-06-20', 13, 3, 18, 59.90),
('2024-09-10', 13, 4, 25, 119.90),
('2024-12-01', 13, 5, 10, 199.90),
('2024-01-15', 16, 6, 14, 79.90),
('2024-04-05', 16, 7, 22, 99.90),
('2024-04-05', 16, 8, 10, 69.90),
('2024-06-25', 16, 9, 8, 249.90),
('2024-09-15', 16, 10, 5, 89.90),
('2024-12-05', 16, 11, 16, 49.90),
('2024-01-20', 19, 12, 7, 59.90),
('2024-01-20', 19, 13, 12, 19.90),
('2024-04-10', 19, 14, 10, 79.90),
('2024-07-01', 19, 15, 20, 139.90),
('2024-09-20', 19, 16, 5, 129.90),
('2024-12-10', 19, 1, 18, 29.90),
('2024-01-25', 23, 2, 14, 89.90),
('2024-04-15', 23, 3, 9, 59.90),
('2024-07-05', 23, 4, 5, 119.90),
('2024-07-05', 23, 5, 12, 199.90),
('2024-09-25', 23, 6, 10, 79.90),
('2024-12-15', 23, 7, 15, 99.90),
('2024-02-01', 26, 8, 8, 69.90),
('2024-04-20', 26, 9, 12, 249.90),
('2024-07-10', 26, 10, 20, 89.90),
('2024-10-01', 26, 11, 25, 49.90),
('2024-12-20', 26, 12, 14, 59.90),
('2024-02-05', 29, 13, 5, 19.90),
('2024-04-25', 29, 14, 8, 79.90),
('2024-07-15', 29, 15, 10, 139.90),
('2024-07-15', 29, 16, 22, 129.90),
('2024-10-05', 29, 8, 12, 69.90),
('2024-10-05', 29, 10, 20, 89.90),
('2024-02-10', 31, 1, 20, 29.90),
('2024-02-10', 31, 2, 16, 89.90),
('2024-05-01', 31, 3, 12, 59.90),
('2024-07-20', 31, 4, 8, 119.90),
('2024-10-10', 31, 5, 14, 199.90),
('2024-02-15', 34, 6, 7, 79.90),
('2024-02-15', 34, 7, 9, 99.90),
('2024-05-05', 34, 8, 15, 69.90),
('2024-07-25', 34, 9, 25, 249.90),
('2024-10-15', 34, 10, 20, 89.90),
('2024-02-20', 36, 11, 8, 49.90),
('2024-05-10', 36, 12, 14, 59.90),
('2024-08-01', 36, 13, 12, 19.90),
('2024-10-20', 36, 14, 5, 79.90),
('2024-02-25', 39, 15, 8, 139.90),
('2024-02-25', 39, 16, 22, 129.90),
('2024-05-15', 39, 1, 10, 29.90),
('2024-08-05', 39, 2, 7, 89.90),
('2024-10-25', 39, 3, 12, 59.90),
('2024-03-01', 41, 4, 14, 119.90),
('2024-03-01', 41, 5, 18, 199.90),
('2024-05-20', 41, 6, 16, 79.90),
('2024-08-10', 41, 7, 20, 99.90),
('2024-11-01', 41, 8, 8, 69.90),
('2024-03-05', 44, 9, 5, 249.90),
('2024-03-05', 44, 10, 10, 89.90),
('2024-05-25', 44, 11, 12, 49.90),
('2024-08-15', 44, 12, 25, 59.90),
('2024-11-05', 44, 13, 7, 19.90),
('2024-03-10', 46, 14, 9, 79.90),
('2024-03-10', 46, 15, 20, 139.90),
('2024-06-01', 46, 16, 15, 129.90),
('2024-08-20', 46, 1, 22, 29.90),
('2024-11-10', 46, 2, 18, 89.90),
('2024-03-15', 49, 3, 16, 59.90),
('2024-03-15', 49, 4, 12, 119.90),
('2024-06-05', 49, 5, 10, 199.90),
('2024-08-25', 49, 6, 14, 79.90),
('2024-11-15', 49, 7, 8, 99.90);

-- Inserindo dados na tabela OrcCompra
INSERT INTO `OrcVenda` (`dataCotacao`, `Pessoa_idPessoa`, `dataValidade`, `prazoEntrega`, `precoCotado`) VALUES
('2024-01-10', 3, '2024-02-10', '2024-03-01', 2500.00),
('2024-01-15', 8, '2024-02-15', '2024-03-05', 3200.00),
('2024-01-20', 12, '2024-02-20', '2024-03-10', 4100.00),
('2024-01-25', 15, '2024-02-25', '2024-03-15', 3800.00),
('2024-02-01', 18, '2024-03-01', '2024-03-20', 4500.00),
('2024-02-05', 21, '2024-03-05', '2024-03-25', 5000.00),
('2024-02-10', 25, '2024-03-10', '2024-03-30', 2700.00),
('2024-02-15', 28, '2024-03-15', '2024-04-05', 3400.00),
('2024-02-20', 32, '2024-03-20', '2024-04-10', 3900.00),
('2024-02-25', 35, '2024-03-25', '2024-04-15', 4600.00),
('2024-03-01', 38, '2024-04-01', '2024-04-20', 5200.00),
('2024-03-05', 41, '2024-04-05', '2024-04-25', 2500.00),
('2024-03-10', 44, '2024-04-10', '2024-04-30', 3300.00),
('2024-03-15', 47, '2024-04-15', '2024-05-05', 4000.00),
('2024-03-20', 50, '2024-04-20', '2024-05-10', 3700.00),
('2024-03-25', 1, '2024-04-25', '2024-05-15', 4200.00),
('2024-04-01', 6, '2024-05-01', '2024-05-20', 4800.00),
('2024-04-05', 9, '2024-05-05', '2024-05-25', 5300.00),
('2024-04-10', 12, '2024-05-10', '2024-05-30', 2900.00),
('2024-04-15', 18, '2024-05-15', '2024-06-05', 3600.00),
('2024-04-20', 25, '2024-05-20', '2024-06-10', 4300.00),
('2024-04-25', 32, '2024-05-25', '2024-06-15', 5100.00);


-- Inserindo dados na tabela CompoeVendaSemOrc
INSERT INTO `CompoeVendaSemOrc` (`PedidoVenda_Pedido_id`, `Produto_codProd`, `quantidade`, `preco`) VALUES
(3, 1, 10, 29.90),
(3, 2, 5, 89.90),
(6, 3, 8, 59.90),
(11, 4, 7, 119.90),
(11, 5, 4, 199.90),
(14, 6, 12, 79.90),
(17, 7, 10, 99.90),
(21, 8, 15, 69.90),
(21, 9, 6, 249.90),
(25, 10, 9, 89.90),
(28, 11, 20, 49.90),
(31, 12, 11, 59.90),
(34, 13, 8, 19.90),
(34, 14, 7, 79.90),
(38, 15, 12, 139.90),
(41, 16, 10, 129.90),
(44, 1, 5, 29.90),
(44, 2, 8, 89.90),
(47, 3, 7, 59.90),
(51, 4, 14, 119.90),
(54, 5, 10, 199.90),
(57, 6, 9, 79.90),
(57, 7, 11, 99.90),
(61, 8, 13, 69.90),
(64, 9, 6, 249.90),
(67, 10, 7, 89.90),
(71, 11, 10, 49.90),
(71, 12, 12, 59.90),
(74, 13, 9, 19.90),
(78, 14, 15, 79.90),
(81, 15, 8, 139.90),
(81, 16, 5, 129.90),
(84, 1, 10, 29.90),
(87, 2, 14, 89.90),
(91, 3, 12, 59.90),
(94, 4, 18, 119.90),
(94, 5, 7, 199.90),
(97, 6, 9, 79.90),
(100, 7, 11, 99.90),
(100, 8, 20, 69.90),
(103, 9, 14, 249.90),
(106, 10, 6, 89.90),
(109, 11, 12, 49.90),
(109, 12, 8, 59.90),
(112, 13, 10, 19.90),
(115, 14, 14, 79.90),
(118, 15, 9, 139.90),
(118, 16, 10, 129.90),
(122, 1, 8, 29.90),
(125, 2, 12, 89.90);


-- Inserindo dados na tabela CompoeOrcVenda
INSERT INTO `CompoeOrcVenda` (`Produto_codProd`, `OrcVenda_dataCotacao`, `OrcVenda_Pessoa_idPessoa`, `quantidade`, `preco`) VALUES
(1, '2024-01-10', 3, 10, 29.90),
(2, '2024-01-10', 3, 5, 89.90),
(4, '2024-01-15', 8, 15, 119.90),
(5, '2024-01-15', 8, 7, 199.90),
(7, '2024-01-20', 12, 10, 99.90),
(9, '2024-01-20', 12, 12, 249.90),
(3, '2024-01-25', 15, 8, 59.90),
(6, '2024-01-25', 15, 14, 79.90),
(8, '2024-02-01', 18, 20, 69.90),
(10, '2024-02-01', 18, 10, 89.90),
(11, '2024-02-05', 21, 15, 49.90),
(12, '2024-02-05', 21, 12, 59.90),
(13, '2024-02-10', 25, 7, 19.90),
(14, '2024-02-10', 25, 10, 79.90),
(15, '2024-02-15', 28, 8, 139.90),
(16, '2024-02-15', 28, 5, 129.90),
(1, '2024-02-20', 32, 18, 29.90),
(3, '2024-02-20', 32, 12, 59.90),
(6, '2024-02-25', 35, 10, 79.90),
(9, '2024-02-25', 35, 8, 249.90),
(4, '2024-03-01', 38, 20, 119.90),
(5, '2024-03-01', 38, 12, 199.90),
(7, '2024-03-05', 41, 14, 99.90),
(8, '2024-03-05', 41, 10, 69.90),
(10, '2024-03-10', 44, 18, 89.90),
(12, '2024-03-10', 44, 12, 59.90),
(14, '2024-03-15', 47, 15, 79.90),
(15, '2024-03-15', 47, 8, 139.90),
(16, '2024-03-20', 50, 10, 129.90),
(2, '2024-03-20', 50, 12, 89.90),
(3, '2024-03-25', 1, 7, 59.90),
(5, '2024-03-25', 1, 10, 199.90),
(6, '2024-04-01', 6, 20, 79.90),
(8, '2024-04-01', 6, 15, 69.90),
(10, '2024-04-05', 9, 12, 89.90),
(11, '2024-04-05', 9, 10, 49.90),
(12, '2024-04-10', 12, 14, 59.90),
(14, '2024-04-10', 12, 7, 79.90),
(15, '2024-04-15', 18, 8, 139.90),
(16, '2024-04-15', 18, 5, 129.90),
(1, '2024-04-20', 25, 18, 29.90),
(3, '2024-04-20', 25, 12, 59.90),
(4, '2024-04-25', 32, 10, 119.90),
(5, '2024-04-25', 32, 8, 199.90);

-- Inserindo dados na tabela PessoaEndereço
INSERT INTO `PessoaEndereço` (`Pessoa_idPessoa`, `numero`, `logadouro`, `complemento`, `bairro`, `cidade`, `cep`, `estado`) VALUES
(1, 123, 'Rua Francisco Sales', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(2, 456, 'Avenida Perimetral', 'Apto 301', 'Jardim Glória', 'Lavras', '37200000', 'MG'),
(3, 789, 'Rua Misseno de Pádua', NULL, 'Dona Julieta', 'Lavras', '37200000', 'MG'),
(4, 321, 'Rua Comandante Nélio', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(5, 654, 'Rua Santana', 'Casa B', 'Vila Murad', 'Lavras', '37200000', 'MG'),
(6, 987, 'Rua Francisco Salles', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(7, 135, 'Avenida Duque de Caxias', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(8, 246, 'Rua Raul Soares', NULL, 'Nova Lavras', 'Lavras', '37200000', 'MG'),
(9, 357, 'Rua Francisco Andrade', NULL, 'Nova Era', 'Lavras', '37200000', 'MG'),
(10, 468, 'Rua Visconde do Rio Branco', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(11, 579, 'Rua Oscar Botrel', NULL, 'Jardim América', 'Lavras', '37200000', 'MG'),
(12, 680, 'Rua Misseno de Pádua', NULL, 'Jardim Floresta', 'Lavras', '37200000', 'MG'),
(13, 791, 'Rua Raul Soares', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(14, 892, 'Rua Santana', NULL, 'Santa Efigênia', 'Lavras', '37200000', 'MG'),
(15, 903, 'Avenida Pedro Salles', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(16, 111, 'Rua Dr. Samuel Gammon', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(17, 222, 'Rua Antônio dos Santos', NULL, 'Vila São Francisco', 'Lavras', '37200000', 'MG'),
(18, 333, 'Rua Comandante Nélio', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(19, 444, 'Rua Misseno de Pádua', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(20, 555, 'Avenida Perimetral', NULL, 'Jardim Glória', 'Lavras', '37200000', 'MG'),
(21, 666, 'Rua Francisco Andrade', NULL, 'Nova Era', 'Lavras', '37200000', 'MG'),
(22, 777, 'Rua Francisco Salles', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(23, 888, 'Rua Santana', NULL, 'Santa Efigênia', 'Lavras', '37200000', 'MG'),
(24, 999, 'Rua Dr. Samuel Gammon', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(25, 112, 'Avenida Duque de Caxias', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(26, 223, 'Rua Francisco Sales', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(27, 334, 'Rua Antônio dos Santos', NULL, 'Vila São Francisco', 'Lavras', '37200000', 'MG'),
(28, 445, 'Rua Oscar Botrel', NULL, 'Jardim América', 'Lavras', '37200000', 'MG'),
(29, 556, 'Rua Misseno de Pádua', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(30, 667, 'Rua Raul Soares', NULL, 'Nova Lavras', 'Lavras', '37200000', 'MG'),
(31, 778, 'Rua Francisco Andrade', NULL, 'Nova Era', 'Lavras', '37200000', 'MG'),
(32, 889, 'Avenida Pedro Salles', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(33, 990, 'Rua Dr. Samuel Gammon', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(34, 121, 'Rua Raul Soares', NULL, 'Nova Lavras', 'Lavras', '37200000', 'MG'),
(35, 232, 'Rua Santana', NULL, 'Vila Murad', 'Lavras', '37200000', 'MG'),
(36, 343, 'Rua Comandante Nélio', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(37, 454, 'Rua Misseno de Pádua', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(38, 565, 'Avenida Perimetral', NULL, 'Jardim Glória', 'Lavras', '37200000', 'MG'),
(39, 676, 'Rua Francisco Andrade', NULL, 'Nova Era', 'Lavras', '37200000', 'MG'),
(40, 787, 'Rua Francisco Salles', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(41, 898, 'Rua Raul Soares', NULL, 'Nova Lavras', 'Lavras', '37200000', 'MG'),
(42, 909, 'Rua Oscar Botrel', NULL, 'Jardim América', 'Lavras', '37200000', 'MG'),
(43, 101, 'Rua Francisco Sales', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(44, 202, 'Rua Comandante Nélio', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(45, 303, 'Avenida Duque de Caxias', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(46, 404, 'Rua Misseno de Pádua', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(47, 505, 'Rua Dr. Samuel Gammon', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(48, 606, 'Rua Antônio dos Santos', NULL, 'Vila São Francisco', 'Lavras', '37200000', 'MG'),
(49, 707, 'Rua Francisco Salles', NULL, 'Centro', 'Lavras', '37200000', 'MG'),
(50, 808, 'Rua Santana', NULL, 'Santa Efigênia', 'Lavras', '37200000', 'MG'),
(3, 123, 'Avenida 1º de Junho', NULL, 'Centro', 'Divinópolis', '35500000', 'MG'),
(8, 234, 'Rua Goiás', NULL, 'Centro', 'Divinópolis', '35500000', 'MG'),
(12, 345, 'Rua São Paulo', NULL, 'Catalão', 'Divinópolis', '35500000', 'MG'),
(15, 456, 'Rua Minas Gerais', 'Apto 101', 'Bom Pastor', 'Divinópolis', '35500000', 'MG'),
(18, 567, 'Rua Mato Grosso', NULL, 'Porto Velho', 'Divinópolis', '35500000', 'MG'),
(25, 678, 'Rua Pernambuco', NULL, 'Sidil', 'Divinópolis', '35500000', 'MG'),
(32, 789, 'Rua Rio de Janeiro', NULL, 'Niterói', 'Divinópolis', '35500000', 'MG'),
(40, 890, 'Rua Paraná', NULL, 'Catalão', 'Divinópolis', '35500000', 'MG');


-- Inserindo dados na tabela PedidoVendaOrcamento
INSERT INTO `PedidoVendaOrc` (`PedidoVenda_Pedido_id`, `OrcVenda_dataCotacao`, `OrcVenda_Pessoa_idPessoa`) VALUES
(1, '2024-01-10', 3),
(1, '2024-02-25', 35),
(5, '2024-01-15', 8),
(8, '2024-01-20', 12),
(13, '2024-01-25', 15),
(16, '2024-02-01', 18),
(19, '2024-02-05', 21),
(23, '2024-02-10', 25),
(26, '2024-02-15', 28),
(29, '2024-02-20', 32),
(33, '2024-02-25', 35),
(36, '2024-03-01', 38),
(39, '2024-03-05', 41),
(42, '2024-03-10', 44),
(45, '2024-03-15', 47),
(49, '2024-03-20', 50),
(52, '2024-03-25', 1),
(55, '2024-04-01', 6),
(59, '2024-04-05', 9),
(63, '2024-04-10', 12),
(66, '2024-04-15', 18),
(69, '2024-04-20', 25),
(73, '2024-02-01', 18),
(76, '2024-02-10', 25),
(79, '2024-03-05', 41),
(83, '2024-03-10', 44),
(86, '2024-03-15', 47),
(89, '2024-03-20', 50),
(92, '2024-03-25', 1),
(95, '2024-04-01', 6),
(98, '2024-04-05', 9),
(101, '2024-04-10', 12),
(105, '2024-04-15', 18),
(108, '2024-04-20', 25),
(111, '2024-02-25', 35),
(114, '2024-03-01', 38),
(117, '2024-03-05', 41),
(120, '2024-03-10', 44),
(123, '2024-03-15', 47),
(127, '2024-03-20', 50);