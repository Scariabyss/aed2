drop DATABASE dblojaetec;
create DATABASE dblojaetec;
use dbljaetec;

create TABLE usuarios(
	iduser int primary key auto_increment,
    usuario varchar(50) not null,
    fone varchar(15),
    login varchar(15) not null unique,
    senha varchar(15) not null
);

create TABLE clientes(
    idcli int primary key auto_increment,
    nomecli varchar(50) not null,
    endcli varchar(100),
    fonecli varchar(15) not null,
    emailcli varchar(50) 
);

create TABLE ordem_servico(
    os int primary key auto_increment,
 	data_os timestamp default current_timestamp,
 	equipamento varchar(150) not null,
 	defeito varchar(150) not null,
    servico varchar(150),
    tecnico varchar(30),
    valor decimal(10,2),
    idcli int not null,
    foreign key(idcli) references clientes(idcli)
);

INSERT INTO usuarios (usuario, fone, login, senha) VALUES
('João da Silva', '11999998888', 'joaosilva', 'senha123'),
('Maria Oliveira', '11988887777', 'mariaoliveira', 'senha456'),
('Carlos Souza', '11977776666', 'carlossouza', 'senha789');

INSERT INTO clientes (nomecli, endcli, fonecli, emailcli) VALUES
('Ana Paula', 'Rua das Flores, 123', '11955554444', 'ana.paula@email.com'),
('Bruno Lima', 'Av. Paulista, 1000', '11944443333', 'bruno.lima@email.com'),
('Carla Mendes', 'Rua A, 50', '11933332222', 'carla.mendes@email.com');

INSERT INTO ordem_servico (equipamento, defeito, servico, tecnico, valor, idcli) VALUES
('Notebook Dell Inspiron', 'Não liga', 'Troca da fonte interna', 'Técnico 1', 350.00, 1),
('Impressora HP Deskjet', 'Papel atolado', 'Limpeza geral e teste', 'Técnico 2', 120.00, 2),
('Smartphone Samsung A52', 'Tela quebrada', 'Substituição de tela', 'Técnico 3', 480.00, 3);
    