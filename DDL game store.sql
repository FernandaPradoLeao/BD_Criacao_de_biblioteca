CREATE DATABASE Biblioteca;
use biblioteca;

CREATE TABLE livro(
	idlivro INTEGER(5) AUTO_INCREMENT PRIMARY KEY,
    nuSerieLivro INTEGER(5),
    fk_idtituloLivro INTEGER(5),
    FOREIGN KEY (fk_idtituloLivro) REFERENCES TituloLivro(idtituloLivro)
    );
    
CREATE TABLE TituloLivro(
	idtituloLivro INTEGER(10) AUTO_INCREMENT PRIMARY KEY,
    deTtitulo VARCHAR(255),
    coISBN VARCHAR(50),
    nuANO VARCHAR(4),
    fk_id_Editora INTEGER(5),
    fk_idCategoria INTEGER(5),
FOREIGN KEY (fk_id_Editora) REFERENCES Editora(id_Editora),
FOREIGN KEY (fk_idCategoria) REFERENCES Categoria(idCategoria)
    );
    
CREATE TABLE Editora(
	id_Editora INTEGER(5) AUTO_INCREMENT PRIMARY KEY,
    rmEditora VARCHAR(255),
    nuTelefone VARCHAR(10),
    nuCNPJ VARCHAR(14)
    );
    
CREATE TABLE Categoria(
	idCategoria INTEGER(5) AUTO_INCREMENT PRIMARY KEY,
    rmCategoria VARCHAR(50)
    );
    
CREATE TABLE Autor(
	idAutor INTEGER(10) AUTO_INCREMENT PRIMARY KEY,
    rmAutor VARCHAR(100),
    nuCPF VARCHAR(11)
    );
    
CREATE TABLE Emprestimo(
	idEmprestimo INTEGER(5),
    dtEmprestimo DATE,
    fk_idAluno INTEGER (5),
FOREIGN KEY (fk_idAluno) REFERENCES Aluno(idAluno)
    );
    
CREATE TABLE Aluno(
	idAluno INTEGER(5) AUTO_INCREMENT PRIMARY KEY,
    nuRA VARCHAR(8),
    nmAluno VARCHAR(100),
    nuTelefone VARCHAR(10),
    deEndereco VARCHAR(255)
    );
    
CREATE TABLE AutorTituloLivro(
	idAutorLivro INTEGER(5) AUTO_INCREMENT PRIMARY KEY,
    fk_idtituloLivro INTEGER (10),
    fk_idAutor INTEGER (10),
    FOREIGN KEY (fk_idtituloLivro) REFERENCES TituloLivro(idtituloLivro)
    );
    
CREATE TABLE Emprestimolivro(
	idEmprestimoLivro INTEGER(5) AUTO_INCREMENT PRIMARY KEY,
    dtDevoluçao DATE NOT NULL,
    fk_idlivro INTEGER (5),
    fk_idEmprestimo INTEGER (5),
    FOREIGN KEY (fk_idlivro) REFERENCES livro(idlivro),
    FOREIGN KEY (fk_idEmprestimo) REFERENCES Emprestimo(idEmprestimo)
    );
    
  

    



