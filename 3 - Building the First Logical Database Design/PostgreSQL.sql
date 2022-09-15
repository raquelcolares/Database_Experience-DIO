INSERT INTO Cliente (Nome, Endereco, Identificacao) VALUES ('Paula Soares', '123.456.789-10', 'PF');
INSERT INTO Cliente (Nome, Endereco, Identificacao) VALUES ('Lucio Costa', '234.567.891-11', 'PF');
INSERT INTO Cliente (Nome, Endereco, Identificacao) VALUES ('RC Atacado', '31.694.775/0001-89', 'PJ');

INSERT INTO Produto (Categoria, Descricao, Valor) VALUES ('Papelaria', 'Livro', 54.72);
INSERT INTO Produto (Categoria, Descricao, Valor) VALUES ('Eletronico', 'Pen-drive', 31.98);
INSERT INTO Produto (Categoria, Descricao, Valor) VALUES ('Eletronico', 'Impressora', 1188.00);

INSERT INTO Pedido (StatusPedido, Descricao, Frete) VALUES ('Solicitado', 'Descricao1', 20.00);
INSERT INTO Pedido (StatusPedido, Descricao, Frete) VALUES ('Em Andamento', 'Descricao2', 14.00); 
INSERT INTO Pedido (StatusPedido, Descricao, Frete) VALUES ('Concluido', 'Descricao3', 9.99); 

INSERT INTO Pagamento_Boleto (Data_Vencimento, Valor) VALUES (2022/08/19, 74.72);
INSERT INTO Pagamento_Boleto (Data_Vencimento, Valor) VALUES (2022/11/03, 45.98);
INSERT INTO Pagamento_Boleto (Data_Vencimento, Valor) VALUES (2022/12/21, 21.99);

INSERT INTO Pagamento_Cartao (Numero_Cartao, CVV_Cartao, Nome, Valor) VALUES ('4897245568254', '123', 'Ricardo Peres', 95.20); 
INSERT INTO Pagamento_Cartao (Numero_Cartao, CVV_Cartao, Nome, Valor) VALUES ('2848148188785', '456', 'Marilia Figueiredo', 213.40); 
INSERT INTO Pagamento_Cartao (Numero_Cartao, CVV_Cartao, Nome, Valor) VALUES ('2138894546952', '789', 'RC Atacado', 1197.99); 

INSERT INTO Entrega (Codigo_Rastreio, Status, Data_Entrega) VALUES ('BR20540', 'Entregue', 2022/08/23); 
INSERT INTO Entrega (Codigo_Rastreio, Status, Data_Entrega) VALUES ('BR32089', 'Entregue', 2022/09/11);
INSERT INTO Entrega (Codigo_Rastreio, Status, Data_Entrega) VALUES ('BR47523', 'A caminho', 2022/11/05);

INSERT INTO Estoque (Local) VALUES ('Local A'); 
INSERT INTO Estoque (Local) VALUES ('Local B'); 
INSERT INTO Estoque (Local) VALUES ('Local C'); 

INSERT INTO Fornecedor (CNPJ, Razao_Social) VALUES ('68.542.154/0001-10', 'Papelaria Fornecimento Ltda'); 
INSERT INTO Fornecedor (CNPJ, Razao_Social) VALUES ('33.396.741/0001-43', 'Distribuidores Ltda');  
INSERT INTO Fornecedor (CNPJ, Razao_Social) VALUES ('17.258.349/0001-61', 'Eletronica Ltda'); 

INSERT INTO Terceiro_Vendedor (Local, Razao_Social) VALUES ('Local D', 'Games for Fun Ltda'); 
INSERT INTO Terceiro_Vendedor (Local, Razao_Social) VALUES ('Local E', 'B&H Ltda');  
INSERT INTO Terceiro_Vendedor (Local, Razao_Social) VALUES ('Local F', 'Best Vendedor Ltda'); 


-- CRIANDO QUERIES

-- Recuperações simples com SELECT Statement
select * from Produto;

-- Filtros com WHERE Statement
select * from Cliente where Identificacao = 'PF';

-- Crie expressões para gerar atributos derivados
select Descricao, AVG(Frete) from Pedido;

-- Defina ordenações dos dados com ORDER BY
select Descricao, Valor from Produto order by Valor desc;

-- Condições de filtros aos grupos – HAVING Statement
select Descricao, Valor from Produto group by Eletronico having Valor => 31;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
select *
    from Produto AS p, Pagamento_Boleto AS b
    inner join Valor
    on p.Valor = b.valor