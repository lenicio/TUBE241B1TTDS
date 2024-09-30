DROP DATABASE IF EXISTS loja;

CREATE DATABASE IF NOT EXISTS loja;

USE loja;

CREATE TABLE IF NOT EXISTS clientes (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(200) NOT NULL,
  cidade VARCHAR(100),
  email VARCHAR(200),
  saldo DECIMAL (6, 2) DEFAULT (0),
  telefone VARCHAR(20),
  data_nascimento DATE,
  genero ENUM ('Masculino', 'Feminino', 'Outro'),
  status_cliente ENUM ('Ativo', 'Inativo') DEFAULT ('Ativo'),
  cpf VARCHAR(14) UNIQUE,
  data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

INSERT INTO clientes (nome, cidade, email, saldo, telefone, data_nascimento, genero, status_cliente, cpf)
VALUES 
('Ana Souza', 'São Paulo', 'ana.souza@example.com', 150.75, '(11) 91234-5678', '1994-03-10', 'Feminino', 'Ativo', '123.456.789-01'),
('Bruno Silva', 'Rio de Janeiro', 'bruno.silva@example.com', 250.00, '(21) 98877-1234', '2002-06-25', 'Masculino', 'Ativo', '234.567.890-12'),
('Carla Menezes', 'Belo Horizonte', 'carla.menezes@example.com', 0.00, '(31) 99888-3456', '1984-11-15', 'Feminino', 'Ativo', '345.678.901-23'),
('Diego Costa', 'Salvador', 'diego.costa@example.com', 175.20, '(71) 98234-9876', '1995-08-07', 'Masculino', 'Ativo', '456.789.012-34'),
('Elaine Prado', 'Porto Alegre', 'elaine.prado@example.com', 120.60, '(51) 99677-2222', NULL, 'Feminino', 'Inativo', '567.890.123-45'),
('Fernando Lima', 'São Paulo', 'fernando.lima@example.com', 80.90, '(11) 92345-6789', '1997-05-12', 'Masculino', 'Ativo', '678.901.234-56'),
('Gustavo Pereira', 'Brasília', 'gustavo.pereira@example.com', 215.40, '(61) 98765-4321', '2003-02-10', 'Masculino', 'Ativo', '789.012.345-67'),
('Heloísa Almeida', 'Curitiba', 'heloisa.almeida@example.com', 500.00, '(41) 91234-9876', NULL, 'Feminino', 'Ativo', '890.123.456-78'),
('Isabela Martins', 'São Paulo', 'isabela.martins@example.com', 0.00, '(11) 99999-1111', '1998-04-04', 'Feminino', 'Inativo', '901.234.567-89'),
('João Oliveira', 'Recife', 'joao.oliveira@example.com', 110.50, '(81) 92345-7890', '1979-12-15', 'Masculino', 'Ativo', '012.345.678-90'),
('Lucas Santos', 'Fortaleza', 'lucas.santos@example.com', 175.75, '(85) 91234-5678', '1993-04-22', 'Masculino', 'Ativo', '123.456.789-02'),
('Maria Ferreira', 'Manaus', 'maria.ferreira@example.com', 0.00, '(92) 98877-8765', '1985-09-10', 'Feminino', 'Ativo', '234.567.890-13'),
('Paulo Moreira', 'Belém', 'paulo.moreira@example.com', 210.50, '(91) 98234-5432', '1990-02-12', 'Masculino', 'Ativo', '345.678.901-24'),
('Renata Lima', 'Florianópolis', 'renata.lima@example.com', 130.00, '(48) 99677-5566', '1996-11-01', 'Feminino', 'Ativo', '456.789.012-35'),
('Sérgio Oliveira', 'João Pessoa', 'sergio.oliveira@example.com', 85.20, '(83) 98234-1234', NULL, 'Masculino', 'Inativo', '567.890.123-46'),
('Tânia Braga', 'Aracaju', 'tania.braga@example.com', 520.40, '(79) 98765-6789', '1992-07-17', 'Feminino', 'Ativo', '678.901.234-57'),
('Victor Mendes', 'Campinas', 'victor.mendes@example.com', 140.30, '(19) 98234-5678', '1989-10-25', 'Masculino', 'Ativo', '789.012.345-68'),
('Yasmin Rocha', 'São Luís', 'yasmin.rocha@example.com', 255.70, '(98) 99677-1111', '1994-12-03', 'Feminino', 'Ativo', '890.123.456-79'),
('Zeca Martins', 'Maceió', 'zeca.martins@example.com', 110.00, '(82) 98765-4321', '1991-08-09', 'Masculino', 'Ativo', '901.234.567-80'),
('Adriana Souza', 'Natal', 'adriana.souza@example.com', 150.00, '(84) 99677-9876', '1987-04-14', 'Feminino', 'Inativo', '012.345.678-91'),
('Bárbara Lemos', 'Vitória', 'barbara.lemos@example.com', 0.00, '(27) 99888-2345', '1995-01-01', 'Feminino', 'Ativo', '123.456.789-03'),
('Carlos Eduardo', 'Fortaleza', 'carlos.eduardo@example.com', 160.40, '(85) 91234-5678', '1992-03-22', 'Masculino', 'Ativo', '234.567.890-14'),
('Daniel Matos', 'Natal', 'daniel.matos@example.com', 340.20, '(84) 98765-8765', '1986-09-30', 'Masculino', 'Ativo', '345.678.901-25'),
('Eduarda Ramos', 'Campo Grande', 'eduarda.ramos@example.com', 130.80, '(67) 98234-0987', NULL, 'Feminino', 'Ativo', '456.789.012-36'),
('Fabiano Souza', 'Cuiabá', 'fabiano.souza@example.com', 145.00, '(65) 99677-6666', '1987-11-05', 'Masculino', 'Inativo', '567.890.123-47'),
('Gabriel Costa', 'Porto Alegre', 'gabriel.costa@example.com', 215.00, '(51) 98765-7654', '1993-06-16', 'Masculino', 'Ativo', '678.901.234-58'),
('Helena Lima', 'Rio Branco', 'helena.lima@example.com', 240.75, '(68) 98888-5555', '1985-07-07', 'Feminino', 'Ativo', '789.012.345-69'),
('Iago Figueiredo', 'Macapá', 'iago.figueiredo@example.com', 190.50, '(96) 98234-1111', '1997-12-22', 'Masculino', 'Ativo', '890.123.456-70'),
('Juliana Amaral', 'Teresina', 'juliana.amaral@example.com', 0.00, '(86) 99677-7777', '1996-01-30', 'Feminino', 'Inativo', '901.234.567-81'),
('Kleber Souza', 'Palmas', 'kleber.souza@example.com', 85.70, '(63) 98765-4321', NULL, 'Masculino', 'Ativo', '012.345.678-92'),
('Larissa Costa', 'Salvador', 'larissa.costa@example.com', 220.50, '(71) 91234-5432', '1991-04-10', 'Feminino', 'Ativo', '123.456.789-04'),
('Marcelo Silva', 'São Paulo', 'marcelo.silva@example.com', 135.00, '(11) 99888-0000', '1989-05-25', 'Masculino', 'Ativo', '234.567.890-15'),
('Nina Rosa', 'Fortaleza', 'nina.rosa@example.com', 125.30, '(85) 99677-3333', '1993-06-12', 'Feminino', 'Ativo', '345.678.901-26'),
('Oscar Vieira', 'Curitiba', 'oscar.vieira@example.com', 195.20, '(41) 98765-3333', '1987-07-27', 'Masculino', 'Ativo', '456.789.012-37'),
('Priscila Melo', 'São Paulo', 'priscila.melo@example.com', 155.60, '(11) 91234-8888', '1994-09-18', 'Feminino', 'Ativo', '567.890.123-48'),
('Rafael Moreira', 'Recife', 'rafael.moreira@example.com', 0.00, '(81) 98765-9876', '1988-03-05', 'Masculino', 'Ativo', '678.901.234-59'),
('Sofia Andrade', 'Salvador', 'sofia.andrade@example.com', 125.75, '(71) 98888-4444', '1995-12-17', 'Feminino', 'Ativo', '789.012.345-60'),
('Thiago Lima', 'Florianópolis', 'thiago.lima@example.com', 340.90, '(48) 98234-6543', '1989-08-14', 'Masculino', 'Ativo', '890.123.456-71'),
('Ursula Maia', 'Belém', 'ursula.maia@example.com', 190.70, '(91) 99677-2345', '1993-11-09', 'Feminino', 'Ativo', '901.234.567-82'),
('Vera Lúcia', 'Aracaju', 'vera.lucia@example.com', 285.30, '(79) 98234-6543', '1986-04-23', 'Feminino', 'Inativo', '012.345.678-93'),
('Wilson Dias', 'Brasília', 'wilson.dias@example.com', 410.50, '(61) 98765-1111', '1990-01-17', 'Masculino', 'Ativo', '123.456.789-05'),
('Xavier Santos', 'São Paulo', 'xavier.santos@example.com', 135.20, '(11) 99999-7777', '1992-09-25', 'Masculino', 'Ativo', '234.567.890-16'),
('Yara Lopes', 'Belo Horizonte', 'yara.lopes@example.com', 120.90, '(31) 99888-7654', '1994-02-19', 'Feminino', 'Ativo', '345.678.901-27'),
('Zara Reis', 'Salvador', 'zara.reis@example.com', 90.80, '(71) 91234-2222', '1988-05-15', 'Feminino', 'Ativo', '456.789.012-38'),
('Alberto Nunes', 'Manaus', 'alberto.nunes@example.com', 175.50, '(92) 98765-6789', '1989-12-10', 'Masculino', 'Ativo', '567.890.123-49'),
('Bianca Silva', 'Campinas', 'bianca.silva@example.com', 290.00, '(19) 99677-3456', '1990-06-30', 'Feminino', 'Ativo', '678.901.234-60'),
('Caio Teixeira', 'Fortaleza', 'caio.teixeira@example.com', 130.90, '(85) 98765-1111', '1996-07-20', 'Masculino', 'Ativo', '789.012.345-61'),
('Daniela Souza', 'Rio de Janeiro', 'daniela.souza@example.com', 180.30, '(21) 91234-0000', '1991-01-11', 'Feminino', 'Inativo', '890.123.456-72'),
('Eduardo Gonçalves', 'São Paulo', 'eduardo.goncalves@example.com', 220.50, '(11) 99888-5678', '1992-03-03', 'Masculino', 'Ativo', '901.234.567-83');