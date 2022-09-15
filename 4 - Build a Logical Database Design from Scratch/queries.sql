INSERT INTO Cliente (Nome, Endereco, Contato) VALUES ('Paula Soares', 'Endereco 1', '995253467');
INSERT INTO Cliente (Nome, Endereco, Contato) VALUES ('Lucio Costa', 'Endereco 2', '992861734');
INSERT INTO Cliente (Nome, Endereco, Contato) VALUES ('Jose de Jesus', 'Endereco 3', '99168492');

INSERT INTO Veiculo (Placa, Modelo, Ano) VALUES ('HFW5231', 'Palio', 2013);
INSERT INTO Veiculo (Placa, Modelo, Ano) VALUES ('KML8745', 'Honda Fit', 2017); 
INSERT INTO Veiculo (Placa, Modelo, Ano) VALUES ('NYC3219', 'Jeep Renegade', 2021);

INSERT INTO Mecanico (Codigo, Nome, Endereco, Especialidade) VALUES ('011', 'Ademilson Santos', 'Endereco 4', 'motor');
INSERT INTO Mecanico (Codigo, Nome, Endereco, Especialidade) VALUES ('023', 'José Silva', 'Endereco 5', 'freio');
INSERT INTO Mecanico (Codigo, Nome, Endereco, Especialidade) VALUES ('035', 'Walter Peres', 'Endereco 6', 'direcao hidraulica');

INSERT INTO Ordem_Servico (Data_Entrega, Numero, Data_Emissao, Valor, Status) VALUES (2022/09/25, '0289', 2022/09/19, 'Finalizado', 974.72);
INSERT INTO Ordem_Servico (Data_Entrega, Numero, Data_Emissao, Valor, Status) VALUES (2022/10/02, '0302', 2022/09/27, 'Autorizado', 523.36); 
INSERT INTO Ordem_Servico (Data_Entrega, Numero, Data_Emissao, Valor, Status) VALUES (2022/10/07, '0313', 2022/09/29, 'Autorizado', 2091.98);

INSERT INTO Tabela_Referencia (Mao_de_Obra, Valor_Servico, Valor_Peca) VALUES ('Pintura e reparos', 974.72, 95.20); 
INSERT INTO Tabela_Referencia (Mao_de_Obra, Valor_Servico, Valor_Peca) VALUES ('Bateria e alinhamento', 523.36, 245.99); 
INSERT INTO Tabela_Referencia (Mao_de_Obra, Valor_Servico, Valor_Peca) VALUES ('Motor', 2091.98, 1678.00); 

INSERT INTO Servicos (Identificacao, Valor) VALUES ('Pintura e reparos', 974.72); 
INSERT INTO Servicos (Identificacao, Valor) VALUES ('Bateria e alinhamento', 523.36); 
INSERT INTO Servicos (Identificacao, Valor) VALUES ('Motor', 2091.98); 

INSERT INTO Pecas (Quantidade, Identificacao, Valor) VALUES (2, 'Pintura e reparos', 95.20); 
INSERT INTO Pecas (Quantidade, Identificacao, Valor) VALUES (1, 'Bateria e alinhamento', 245.99); 
INSERT INTO Pecas (Quantidade, Identificacao, Valor) VALUES (1, 'Motor', 1678.00); 


-- CRIANDO QUERIES

-- Recuperações simples com SELECT Statement
select * from Veiculo;

-- Filtros com WHERE Statement
select * from Veiculo where Modelo = 'Honda Fit';

-- Crie expressões para gerar atributos derivados
select (Valor_Servico + Valor_Peca) AS Valor_Total from Tabela_Referencia;

-- Defina ordenações dos dados com ORDER BY
select Identificacao, Valor from Servicos order by Valor desc;

-- Condições de filtros aos grupos – HAVING Statement
select Numero, Valor, Status from Ordem_Servico group by Status having Valor > 500.00;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
select *
    from Servicos AS s, Pecas AS p
    inner join Identificacao
    on s.Identificacao = p.Identificacao
