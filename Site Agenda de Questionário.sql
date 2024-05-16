-- Criando o banco de dados
CREATE DATABASE AgendaQuestionario;

-- Usando o banco de dados criado
USE AgendaQuestionario;

-- Criando a tabela 'Pessoa'
CREATE TABLE pessoa (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    data_Nascimento DATE NOT NULL,
    logradouro VARCHAR(100),
    numero VARCHAR(11),
    bairro VARCHAR(100),
    complemento VARCHAR(100),
    cidade varchar(50) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    cep VARCHAR(20) NOT NULL
);

-- Criando a tabela 'Aluno'
CREATE TABLE aluno (
    codAluno INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id),
    username VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
);

-- Criando a tabela 'Docente'
CREATE TABLE docente (
    codProfessor INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id),
    disciplina VARCHAR(100),
    username VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
);

-- Criando a tabela 'Agenda'
CREATE TABLE agenda (
    codAgenda INT AUTO_INCREMENT PRIMARY KEY,
    disciplina VARCHAR(80) NOT NULL,
    dataInicial DATE NOT NULL,
    dataFinal DATE NOT NULL,
    numAgenda INT NOT NULL
);

-- Criando a tabela 'Questionário'
CREATE TABLE questionario (
    codQuestionario INT AUTO_INCREMENT PRIMARY KEY,
    disciplina VARCHAR(100) NOT NULL,
    gabarito VARCHAR(255),
    codAgenda INT,
    FOREIGN KEY (codAgenda) REFERENCES agenda(codAgenda),
    numQuestao INT,
    descQuestao VARCHAR(225)
);

-- Criando a tabela 'Nota'
CREATE TABLE nota (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codAluno INT,
    codQuestionario INT,
    nota FLOAT,
    FOREIGN KEY (codAluno) REFERENCES aluno(codAluno),
    FOREIGN KEY (codQuestionario) REFERENCES questionario(codQuestionario)
);

