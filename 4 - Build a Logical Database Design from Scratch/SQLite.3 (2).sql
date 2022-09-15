-- criação do banco de dados para o cenário da oficina mecânica
create database OFICINA;
USE OFICINA;

-- tabela cliente
create table Cliente(
		idCliente int auto_increment primary key,
    	Nome VARCHAR(45),
    	Endereco VARCHAR(45),
    	Contato VARCHAR(45)
);

-- tabela veículo
create table Veiculo(
		idVeiculo int auto_increment primary key,
		Placa VARCHAR(45),
    	Modelo VARCHAR(45),
    	Ano DATE
);

-- tabela mecânico
create table Mecanico(
		idMecanio int auto_increment primary key,
		Codigo VARCHAR(45),
    	Nome VARCHAR(45),
    	Endereco VARCHAR(45),
    	Especialidade VARCHAR(45)
);

-- tabela ordem de serviço
create table Ordem_Servico(
		idOrdem_Servico int auto_increment primary key,
		Data_Entrega DATE,
    	Numero VARCHAR(45),
    	Data_Emissao DATE,
    	Valor FLOAT,
    	Status VARCHAR(45),
		constraint pk_Ordem_Servico PRIMARY KEY (id)  
);

-- tabela - tabela de referência
create table Tabela_Referencia(
		idTabela_Referencia int auto_increment primary key,
		Mao_de_Obra VARCHAR(45),
		Valor_Servico FLOAT,
    	Valor_Peca FLOAT  
);

-- tabela serviços
create table Servicos(
		idServicos int auto_increment primary key,
		Identificacao VARCHAR(45),
		Valor FLOAT,
    	constraint fk_Servicos_idServicos foreign key (idServicos) references Ordem_Servico(idOrdem_Servico)  
);

-- tabela peças
create table Pecas(
		idPecas int auto_increment primary key,
		Quantidade INT,
		Identificacao VARCHAR(45),
		Valor FLOAT,
		constraint fk_Pecas_idPecas foreign key (idPecas) references Ordem_Servico(idOrdem_Servico)  
);







