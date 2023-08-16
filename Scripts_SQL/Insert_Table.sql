USE consultorio

----********* tb_PACIENTE *******

INSERT INTO tb_PACIENTE 
	(nome_paciente, tel_paciente, email_paciente, status_paciente, data_nascimento)
VALUES
	('Carla Mendes','11995305030', 'carlamendesa@gmail.com', 'Ativo', '1965-02-01'),
	('João Guilherme','11995360135', 'joaoguilherme@gmail.com', 'Ativo', '1965-02-01'),
	('Patricia Souza', '11998005033', 'patriciasouza@gmail.com', 'Ativo', '1966-05-03'),
	('Leticia Oliveira', '11995305037', 'leticiaoliveira@gmail.com', 'Desativado', '1989-10-05'),
	('Carlos Souza', '11998005033', 'patriciasouza@gmail.com', 'Ativo', '1967-05-02'),
	('Julia Oliveira', '11995305037', 'leticiaoliveira@gmail.com', 'Desativado', '1983-10-07');

----********* tb_Especialidades *******

INSERT INTO tb_Especialidades
	  (des_especialidade)
VALUES
	('Neurologi'),
	('Ortopedia'),
	('Pediatria');

----********* tb_Atendimento *******

INSERT INTO tb_Atendimento
	(id_paciente, data_atendimento, hr_atendimento, nome_unidade, endereco_unidade, cd_especialidade)
VALUES
	
	(1,'2023-02-01','13:30','Unidade Santo Amaro','Rua Santo Amaro',1),
	(4,'2023-02-05','16:30','Unidade Liberdade','Rua Liberdade',1),
	(4,'2023-01-05','16:30','Unidade Liberdade','Rua Liberdade',3),
    (2,'2023-03-05','16:30','Unidade Conconhas','Rua Congonhas',2) ,
	(3,'2023-05-05','13:30','Unidade Morumbi','Rua Morumbi',1),
    (4,'2023-07-05','16:30','Unidade Liberdade','Rua Liberdade',3),
	(5,'2023-08-03','13:30','Unidade Morumbi','Rua Morumbi',1),
	(6,'2023-08-05','13:30','Unidade Morumbi','Rua Morumbi',1),
	(4,'2023-08-06','16:30','Unidade Liberdade','Rua Liberdade',3);
	

----********* tb_Prontuario *******

INSERT INTO tb_Prontuario 
	(id_paciente, id_atendimento, descricao_prontuario)
VALUES
	(1, 1, 'Tratamento de dores na coluna cervical'),
	(2, 2, 'Tratamento de Cefaléia crônica'),
	(3, 3, 'Tratamento Muscular'),
	(4, 4, 'Tratamento de Cefaléia crônica'),
    (5, 5, 'Tratamento de Cefaléia crônica'),
    (6, 5, 'Tratamento de Cefaléia crônica'),
	(4, 7, 'Tratamento de Cefaléia crônica'),
    (4, 8, 'Tratamento de Cefaléia crônica');
