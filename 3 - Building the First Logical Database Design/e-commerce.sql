-- criação do banco de dados para o cenário do e-commerce
create database ECOMMERCE;
USE ECOMMERCE;

-- tabela cliente
create table Cliente(
	idCliente int auto_increment primary key,
    Nome VARCHAR(45),
    Endereco VARCHAR(45),
    Identificacao VARCHAR(45),
    constraint unique_cpf_cliente unique (CPF),
    constraint unique_cnpj_cliente unique (CNPJ)
);

-- tabela produto
create table Produto(
	idProduto int auto_increment primary key,
	Categoria VARCHAR(45),
    Descricao VARCHAR(45),
    Valor VARCHAR(45)
);

-- tabela pedido
create table Pedido(
	idPedido int auto_increment primary key,
	StatusPedido VARCHAR(45),
    descricao VARCHAR(45),
    Frete FLOAT,
	constraint fk_Cliente_idCliente foreign key (idPedido) references Cliente(idCliente)  
);

-- tabela pagamento boleto
create table Pagamento_Boleto(
	idPagamento_Boleto int auto_increment primary key,
	Data_Vencimento DATE,
    Valor FLOAT,
	constraint fk_Pedido_Cliente_idCliente foreign key (idPagamento_Boleto) references Pedido(idPedido)  
);

-- tabela pagamento cartao
create table Pagamento_Cartao(
	idPagamento_Cartao int auto_increment primary key,
	Numero_Cartao VARCHAR(45),
	CVV_Cartao VARCHAR(45),
    Nome VARCHAR(45),
    Valor FLOAT,
	constraint fk_Pedido_Cliente_idCliente foreign key (idPagamento_Cartao) references Pedido(idPedido)  
);

-- tabela entrega
create table Entrega(
	idEntrega int auto_increment primary key,
	Codigo_Rastreio VARCHAR(45),
	Status VARCHAR(45),
    Data_Entrega DATE,
    constraint fk_Pedido_Cliente_idCliente foreign key (idEntrega) references Pedido(idPedido)  
);

-- tabela estoque
create table Estoque(
	idEstoque int auto_increment primary key,
	Local VARCHAR(45),
	constraint fk_Estoque_idEstoque foreign key (idEstoque) references Produto(idProduto)  
);

-- tabela fornecedor
create table Fornecedor(
	idFornecedor int auto_increment primary key,
	CNPJ VARCHAR(45),
	Razao_Social VARCHAR(45),
	constraint fk_Fornecedor_idFornecedor foreign key (idFornecedor) references Produto(idProduto)  
);

-- tabela terceiro vendedor
create table Terceiro_Vendedor(
	idTerceiro_Vendedor int auto_increment primary key,
	Local VARCHAR(45),
	Razao_Social VARCHAR(45),
	constraint fk_Terceiro_Vendedor_idTerceiro_Vendedor foreign key (idTerceiro_Vendedor) references Produto(idProduto)  
); 






