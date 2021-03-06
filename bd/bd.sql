//CREATE

CREATE DATABASE sisplag;

CREATE TABLE usuario( 
	id_usuario INT NOT NULL AUTO_INCREMENT, 
	nome_usuario VARCHAR(50) NOT NULL, 
	cpf_usuario INT(11) NOT NULL, 
	login_usuario VARCHAR(50), 
	senha_usuario VARCHAR(50) NOT NULL,
	email_usuario VARCHAR(50) DEFAULT "Sem email",  
	inicio_mandato DATE, 
	fim_mandato DATE, 
	data_nascimento DATE, 
	fk_cargo int,
	fk_tipousuario int,
	CONSTRAINT pk_usuario PRIMARY KEY (id_usuario) 
)


CREATE TABLE cargo( 
	id_cargo INT NOT NULL AUTO_INCREMENT, 
	cargo VARCHAR(50) NOT NULL,
	fk_tipouser INT, 
	CONSTRAINT pk_cargo PRIMARY KEY (id_cargo) 
)





CREATE TABLE tipoUsuario( 
	id_tipousuario INT NOT NULL AUTO_INCREMENT, 
	tipoUsuario VARCHAR(50) NOT NULL , 
	permissao VARCHAR(20) NOT NULL,
	CONSTRAINT pk_tipousuario PRIMARY KEY (id_tipousuario) 
)


CREATE TABLE instituicao( 
	id_instituicao INT NOT NULL AUTO_INCREMENT, 
	fk_tipoInstituicao INT,
	fk_sigla INT,
	fk_distrito INT,
	nome_instituicao VARCHAR(50) NOT NULL, 
	fundacao DATE,
	codigo_inep VARCHAR(25),
	cnpj_escola VARCHAR(20),
	entidade_mantenedora VARCHAR(50) DEFAULT 'SEMEC',
	cnpj_conselho VARCHAR(20),
	vigencia_ce VARCHAR(50),
	cep_escola INT ,
	uf VARCHAR(2),
	cidade VARCHAR(50),
	bairro VARCHAR(50),  
	complemento VARCHAR(50),
	email_inst VARCHAR(50) DEFAULT 'Sem email',
	telefone_inst VARCHAR(13) DEFAULT 'Sem telefone',
	nome_gestor VARCHAR(50) DEFAULT 'Sem Gestor',
	email_gestor VARCHAR(50) DEFAULT 'Sem email',
	whats_gestor VARCHAR(50) DEFAULT 'Sem WhatsApp',  
	nome_secretario VARCHAR(50) DEFAULT 'Sem secretário',
	email_secretario VARCHAR(50) DEFAULT 'Sem email',
	whats_secretario VARCHAR(50) DEFAULT 'Sem WhatsApp',  
	nome_coordenador VARCHAR(50) DEFAULT 'Sem coordenador',
	email_coordenador VARCHAR(50) DEFAULT 'Sem email',
	whats_coordenador VARCHAR(50) DEFAULT 'Sem WhatsApp', 
	convenio_semec VARCHAR(50) DEFAULT 'Não', 
	n_convenio INT DEFAULT 0,
    objeto VARCHAR(50) DEFAULT 'Sem Objeto',
    vigencia DATE DEFAULT NULL,
	educacao_infantil VARCHAR(50) DEFAULT 'Não há', 
	fundamental VARCHAR(50) DEFAULT 'Não há', 
	fundamental_eja VARCHAR(50) DEFAULT 'Não há', 
	outros_niveis VARCHAR(50) DEFAULT 'Não há', 
	status_inst VARCHAR(3)  DEFAULT "Não",
	CONSTRAINT pk_escola PRIMARY KEY (id_instituicao)
)

/*
	convenio_semec VARCHAR(50), 
	educacao_infantil VARCHAR(50), 
	fundamental VARCHAR(50), 
	fundamental_eja VARCHAR(50), 
	outros_niveis VARCHAR(50),
*/


CREATE TABLE tipoInstituicao( 
	id_inst INT NOT NULL AUTO_INCREMENT, 
	nome_inst VARCHAR(50) NOT NULL, 
	CONSTRAINT pk_tipoinst PRIMARY KEY (id_inst) 
)

CREATE TABLE siglaInstituicao( 
	id_sigla INT NOT NULL AUTO_INCREMENT, 
	sigla VARCHAR(50) NOT NULL, 
	CONSTRAINT pk_siglaInstiuicao PRIMARY KEY (id_sigla) 
)


CREATE TABLE distritoAdm( 
	id_distrito INT NOT NULL AUTO_INCREMENT, 
	distritoAdm VARCHAR(50) NOT NULL, 
	CONSTRAINT pk_distrito PRIMARY KEY (id_distrito) 
)


CREATE TABLE filial( 
	id_filial INT NOT NULL AUTO_INCREMENT, 
	nome_filial VARCHAR(50),
	possuiFilial VARCHAR(5) DEFAULT 'Não',
	fk_instituicao INT,
	fk_sigla INT,
	fundacao_filial VARCHAR(50) DEFAULT 'Não há data',
	codigo_inepfilial VARCHAR(50) DEFAULT 'Sem informação',
	cep_filial INT,
	complemento VARCHAR(50),
	telefone_filial VARCHAR(13) DEFAULT 'Sem telefone',
	email_filial VARCHAR(50) DEFAULT 'Sem email',
	resp_filial VARCHAR(50) DEFAULT 'Sem responsável', 
	email_respLegal VARCHAR(50) DEFAULT 'Sem email',
	educacao_infantil VARCHAR(50) DEFAULT 'Sem dados', 
	fundamental_filial VARCHAR(50) DEFAULT 'Sem dados', 
	fundamentaleja_filial VARCHAR(50) DEFAULT 'Sem dados', 
	outrosniveis_filial VARCHAR(50) DEFAULT 'Sem dados',
	CONSTRAINT pk_filial PRIMARY KEY (id_filial)
)

CREATE TABLE documento( 
	id_doc INT NOT NULL AUTO_INCREMENT, 
	fk_instituicao INT,
	requerimento VARCHAR(100),
	req_escolar VARCHAR(100),
	proj_ped VARCHAR(100),
	quadro_demo VARCHAR(100),
	crono_impl VARCHAR(100),
	detalha_impl VARCHAR(100),
	declara_equip VARCHAR(100),
	alvara_func VARCHAR(100),
	laudo_vs VARCHAR(100),
	laudo_cb VARCHAR(100),
	proj_acess VARCHAR(100),
	relat_curso VARCHAR(100),
	comprov_censo VARCHAR(100),
	escola_anexada VARCHAR(100),
	relacao_aluno VARCHAR(100),
	plano_curso VARCHAR(100),
	termo_conv VARCHAR(100),
	req_cme VARCHAR(100),
	comp_atos VARCHAR(100),
	comp_insc VARCHAR(100),
	comp_contmunicipal VARCHAR(100),
	certidao_regulfiscais VARCHAR(100),
	certidao_regulfgts VARCHAR(100),
	demo_patr VARCHAR(100),
	bibliot VARCHAR(100),
	acessibilidade VARCHAR(100),
	lab_info VARCHAR(100),
	recurso_multi VARCHAR(100),
	area_esportiva VARCHAR(100),
	brinquedoteca VARCHAR(100),
	data_upload datetime DEFAULT current_timestamp(),
	CONSTRAINT pk_doc PRIMARY KEY (id_doc) 
)


/* ************RETIRADO**************
CREATE TABLE contato( 
	id_contato INT NOT NULL AUTO_INCREMENT, 
	email_contato VARCHAR(50) DEFAULT 'Sem email',
	emailextra_contato VARCHAR(50) DEFAULT 'Sem email',
	whats_contato VARCHAR(50) DEFAULT 'Sem WhatsApp',  
	telefone_contato VARCHAR(13) DEFAULT 'Sem telefone',
	CONSTRAINT pk_contato PRIMARY KEY (id_contato) 
)
*/

/* ************RETIRADO**************
CREATE TABLE localizacao( 
	id_local INT NOT NULL AUTO_INCREMENT, 
	uf_local VARCHAR(2),
	cidade VARCHAR(50),
	bairro VARCHAR(50),  
	complemento VARCHAR(50),
	CONSTRAINT pk_local PRIMARY KEY (id_local) 
)
*/

/* ************RETIRADO**************
CREATE TABLE gestor( 
	id_gestor INT NOT NULL AUTO_INCREMENT, 
	nome_gestor VARCHAR(50),
	email_gestor VARCHAR(50) DEFAULT 'Sem email',
	whats_gestor VARCHAR(50) DEFAULT 'Sem WhatsApp',  
	telefone_gestor VARCHAR(13) DEFAULT 'Sem telefone',
	CONSTRAINT pk_gestor PRIMARY KEY (id_gestor) 
)
*/

/* ************RETIRADO**************
CREATE TABLE secretario( 
	id_secretario INT NOT NULL AUTO_INCREMENT, 
	nome_secretario VARCHAR(50),
	email_secretario VARCHAR(50) DEFAULT 'Sem email',
	whats_secretario VARCHAR(50) DEFAULT 'Sem WhatsApp',  
	CONSTRAINT pk_secretario PRIMARY KEY (id_secretario) 
)
*/

/* ************RETIRADO**************
CREATE TABLE coordenador( 
	id_coordenador INT NOT NULL AUTO_INCREMENT, 
	nome_coordenador VARCHAR(50),
	email_coordenador VARCHAR(50) DEFAULT 'Sem email',
	whats_coordenador VARCHAR(50) DEFAULT 'Sem WhatsApp',  
	CONSTRAINT pk_coordenador PRIMARY KEY (id_coordenador) 
)
*/

//INSERT

INSERT INTO cargo(cargo, fk_tipouser) 
	VALUES ('presidente', 1),
		('secretario geral', 1),
		('secretario', 2),
		('servidor/conselheiro', 2)
		

INSERT INTO tipoUsuario(tipoUsuario, permissao) 
	VALUES ('administrador', '1'),
    		('comum', '2')
			
			
INSERT INTO distritoAdm (distritoAdm) 
	VALUES 	('DABEL'),
			('DABEN'),
    		('DAGUA'),
            ('DAICO'),
            ('DAOUT'),
            ('DAMOS'),
            ('DAENT'),
            ('DASAC'),
			('Sem Informação')


INSERT INTO usuario (nome_usuario, cpf_usuario, login_usuario, senha_usuario) VALUES ('Administrador', 00, 'admin', 'admin')


INSERT INTO tipoInstituicao (nome_inst)
	VALUES ('Pública'),
    		('Privada')


INSERT INTO `siglaInstituicao`(`sigla`) 
	VALUES ('Comunitária'),
    		('Confessional'),
            ('OSC'),
            ('Privada'),
            ('EMEIF'),
            ('EMEF'),
            ('EMEI'),
            ('UEI'),
            ('Sem Informação')




//ALTER

ALTER TABLE usuario ADD CONSTRAINT fk_cg FOREIGN KEY (fk_cargo) REFERENCES cargo (id_cargo);
ALTER TABLE usuario ADD CONSTRAINT fk_tipo FOREIGN KEY (fk_tipousuario) REFERENCES tipoUsuario (id_tipousuario);

ALTER TABLE cargo ADD CONSTRAINT fk_tpUser FOREIGN KEY (fk_tipouser) REFERENCES tipoUsuario (id_tipousuario);
ALTER TABLE cargo ADD CONSTRAINT fk_tpUser FOREIGN KEY (fk_tipouser) REFERENCES tipoUsuario (id_tipousuario);



ALTER TABLE instituicao ADD CONSTRAINT fk_tip FOREIGN KEY (fk_tipoInstituicao) REFERENCES tipoInstituicao (id_inst);
ALTER TABLE instituicao ADD CONSTRAINT fk_distritoadm FOREIGN KEY (fk_distrito) REFERENCES distritoAdm (id_distrito);
ALTER TABLE instituicao ADD CONSTRAINT fk_siglainst FOREIGN KEY (fk_sigla) REFERENCES siglaInstituicao (id_sigla);


ALTER TABLE filial ADD FOREIGN KEY (fk_instituicao) REFERENCES instituicao (id_instituicao);
ALTER TABLE filial ADD CONSTRAINT fk_siglaFilial FOREIGN KEY (fk_sigla) REFERENCES siglaInstituicao (id_sigla);