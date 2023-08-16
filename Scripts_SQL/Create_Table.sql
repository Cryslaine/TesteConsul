USE consultorio

----********* tb_PACIENTE *******

CREATE TABLE tb_Paciente (
	id_paciente INT IDENTITY (1,1) PRIMARY KEY,
	nome_paciente VARCHAR (50),
	tel_paciente VARCHAR (14),
	email_paciente VARCHAR (100),
	status_paciente  VARCHAR (10),
	data_nascimento DATETIME

)

----********* tb_Especialidades *******

CREATE TABLE tb_Especialidades(
	cd_especialidade INT IDENTITY (1,1) PRIMARY KEY ,
	des_especialidade VARCHAR (100)
)

----********* tb_Atendimento *******

CREATE TABLE tb_Atendimento (
	id_atendimento INT IDENTITY (1,1) PRIMARY KEY ,
	id_paciente INT,
	CONSTRAINT fk_paciente FOREIGN KEY (id_paciente) REFERENCES tb_Paciente (id_paciente),
	data_atendimento DATETIME,
	hr_atendimento TIME,
	nome_unidade VARCHAR (100),
	endereco_unidade  VARCHAR (100),
	cd_especialidade int,
	CONSTRAINT fk_especialidades FOREIGN KEY (cd_especialidade) REFERENCES tb_Especialidades (cd_especialidade)
)

----********* tb_Prontuario *******

CREATE TABLE tb_Prontuario (
	id_prontuario INT IDENTITY (1,1) PRIMARY KEY ,
	id_paciente INT,
	CONSTRAINT fk_paciente_pr FOREIGN KEY (id_paciente) REFERENCES tb_Paciente (id_paciente),
	id_atendimento INT,
	CONSTRAINT fk_atendimento FOREIGN KEY (id_atendimento) REFERENCES tb_Atendimento (id_atendimento),
	descricao_prontuario VARCHAR (200)
)



