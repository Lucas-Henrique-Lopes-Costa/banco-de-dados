USE Empresa;

SELECT 
	f.nomeFunc
FROM 
	Funcionario f
       JOIN Departamento d
         ON f.idDepto = d.idDepto
WHERE  
	d.nomeDepto = 'Pesquisa'

UNION

SELECT 
	f.nomeFunc
FROM
	Funcionario f
       JOIN Trabalha t
         ON f.idFunc = t.idFunc
       JOIN Projeto p
         ON t.idProj = p.idProj
WHERE
	p.nomeProj = 'N. Benefícios';
    
/* Questão 9 */
SELECT
	f.nomeFunc
FROM
	Funcionario f
		JOIN Trabalha t
		  ON f.idFunc = t.idFunc
		JOIN Projeto p
		  ON t.idProj = p.idProj
		JOIN Departamento d
          ON p.idDepto = d.idDepto
WHERE
	d.idGerente = (
		SELECT
			idFunc
		FROM
			Funcionario
		WHERE
			nomeFunc = 'Júnia B. Mendes'
	);

/* Questão 11 */
SELECT
	F.nomeFunc, D.nomeDep
FROM
	Funcionario F LEFT JOIN Dependente D
    ON D.idFunc = F.idFunc;

/* Questão 12 */
SELECT
	COUNT(*)
FROM
	Projeto 
	JOIN Funcionario
	  ON Projeto.idDepto = Funcionario.idDepto
WHERE
	Projeto.nomeProj = 'ProdZ';

/* Questão 13 */
SELECT
	Funcionario.nomeFunc, COUNT(*) AS quantidadeDeProjetos
FROM
	Funcionario
    JOIN Trabalha
	  ON Funcionario.idFunc = Trabalha.idFunc
WHERE
	Trabalha.numHoras > 10
GROUP BY Funcionario.idFunc;

/* Questão 14 */
SELECT
	Funcionario.nomeFunc, COUNT(*) AS quantidadeDeProjetos
FROM
	Funcionario
    JOIN Trabalha
	  ON Funcionario.idFunc = Trabalha.idFunc
GROUP BY Funcionario.idFunc
HAVING
	quantidadeDeProjetos > 1;

/* Questão 15 */
SELECT
	Departamento.nomeDepto, SUM(Funcionario.salario) AS sumSalario
FROM
	Funcionario
    JOIN Departamento
	  ON Funcionario.idDepto = Departamento.idDepto
GROUP BY Departamento.idDepto
HAVING
	COUNT(*) > 1;

/* Questão 16 */
SELECT
	f.nomeFunc
FROM 
	Funcionario f
WHERE 
	f.salario > (
		SELECT 
			MAX(f2.salario)
		FROM 
			Funcionario f2
			JOIN Departamento d 
			  ON f2.idDepto = d.idDepto
		WHERE 
			d.nomeDepto = 'Construção'
)
ORDER BY 
	f.nomeFunc;

/* Questão 17*/
SELECT 
	f.nomeFunc 
		AS NomeFuncionario, s.nomeFunc 
        AS NomeSupervisor
FROM 
	Funcionario f
	JOIN Funcionario s 
	  ON f.idSuperv = s.idFunc
WHERE 
	f.idSuperv NOT IN (
		SELECT 
			idFunc
		FROM 
			Funcionario
		WHERE 
			nomeFunc = 'Frank T. Santos'
	);

/* Questão 18 */
UPDATE 
	Funcionario f
SET 
	f.salario = f.salario * 1.10
WHERE 
	f.idFunc IN (
		SELECT t.idFunc
		FROM Trabalha t
		GROUP BY t.idFunc
		HAVING COUNT(t.idProj) > 1
	);

/*  Questão 19 */
SET SQL_SAFE_UPDATES = 0;

DELETE FROM 
	Projeto
WHERE 
	idProj NOT IN (
		SELECT DISTINCT 
			t.idProj
		FROM 
			Trabalha t
	);

/* Questão 20 */
CREATE VIEW 
	vw_DepartamentoGerente AS
SELECT 
    d.idDepto, 
    d.nomeDepto, 
    f.nomeFunc AS nomeGerente, 
    f.salario AS salarioGerente
FROM 
    Departamento d
JOIN 
    Funcionario f ON d.idGerente = f.idFunc;

/* Questão 21 */
DELIMITER //
CREATE PROCEDURE 
	reajustaSalarioDepto(pIdDepto INT, pPercentualReajuste DOUBLE) BEGIN
UPDATE 
	Funcionario
SET 
	salario = salario * pPercentualReajuste
WHERE 
	idDepto = pIdDepto; END //
DELIMITER ;

-- Exemplos
CALL reajustaSalarioDepto(1, 1.2);

CALL reajustaSalarioDepto(2, 1.15);

/* Questão 22 */
DELIMITER //
CREATE PROCEDURE 
	adicionarFuncionarioProjeto (pIdFunc INT, pIdProj INT, pNumHoras DECIMAL(6, 1)) BEGIN
INSERT INTO 
	Trabalha
VALUES (pIdFunc,
        pIdProj,
        pNumHoras); END //
DELIMITER ;

-- Exemplos
CALL adicionarFuncionarioProjeto(1, 30, 8);

CALL adicionarFuncionarioProjeto(2, 1, 12.5) 

/* Questão 23 */
DELIMITER $$
CREATE TRIGGER
	before_Funcionario_insert
BEFORE INSERT ON 
	Funcionario
FOR EACH ROW BEGIN IF 
	NEW.salario > (
		SELECT 
			F.salario
		FROM 
			Funcionario F
		WHERE 
			F.idFunc = NEW.idSuperv
        )
THEN SIGNAL SQLSTATE '45000' SET message_text = 'Salário do funcionário não pode ser superior a de seu supervisor. Por favor, entre com um novo salário!';
END IF;
END $$

DELIMITER ;

DELIMITER $$
CREATE TRIGGER
	before_Funcionario_update
BEFORE UPDATE ON 
	Funcionario
FOR EACH ROW BEGIN IF 
	NEW.salario > (
			SELECT 
				F.salario
			FROM 
				Funcionario F
			WHERE 
				F.idFunc = NEW.idSuperv
        )
THEN SIGNAL SQLSTATE '45000' SET message_text = 'Salário do funcionário não pode ser superior a de seu supervisor. Por favor, entre com um novo salário!';
END IF;
END $$
DELIMITER ;

-- Exemplos

INSERT INTO 
	FUNCIONARIO
VALUES 
	(100,'Teste 1','-','1965/11/05','F',1500,4,3);

UPDATE 
	Funcionario
SET 
	salario = 1700
WHERE 
	idFunc = 1;

/* Questão 24 */
DELIMITER $$
CREATE TRIGGER 
	before_Departamento_insert
BEFORE INSERT ON Departamento FOR EACH ROW BEGIN IF NOT 
	NEW.idDepto = (
			SELECT 
				F.idDepto
			FROM 
				Funcionario F
			WHERE 
				F.idFunc = NEW.idGerente
		)

THEN SIGNAL SQLSTATE '45000' SET message_text = 'É necessário que o gerente pertença ao departamento. Por favor, entre com um novo gerente!';
END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER
	before_Departamento_update
BEFORE UPDATE ON Departamento FOR EACH ROW BEGIN IF NOT 
	NEW.idDepto = (
		SELECT 
			F.idDepto
		FROM 
			Funcionario F
		WHERE 
			F.idFunc = NEW.idGerente
	)
THEN SIGNAL SQLSTATE '45000' SET message_text = 'É necessário que o gerente pertença ao departamento. Por favor, entre com um novo gerente!';
END IF;
END $$
DELIMITER ;

-- Exemplos

INSERT INTO 
	Departamento
VALUES 
	(10,'Teste',8);

UPDATE 
	Departamento
SET 
	idGerente = 4
WHERE 
	idDepto = 2;

/* Questão 25 */
DELIMITER $$
CREATE TRIGGER 
	before_Trabalha_insert
BEFORE INSERT ON Trabalha FOR EACH ROW BEGIN IF 
	NEW.numHoras + (
		SELECT COALESCE(SUM(numHoras), 0)
		FROM 
			Trabalha T
		WHERE 
			T.idFunc = NEW.idFunc) 
	> 40

THEN SIGNAL SQLSTATE '45000' SET message_text = 'Um funcionário não pode trabalhar mais que 40 horas. Por favor, entre com um novo número de horas!';
END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER 
	before_Trabalha_update
BEFORE UPDATE ON Trabalha FOR EACH ROW BEGIN IF 
	NEW.numHoras - OLD.numHoras + (
		SELECT SUM(numHoras)
		FROM 
			Trabalha T
		WHERE 	
			T.idFunc = NEW.idFunc) 
	> 40

THEN SIGNAL SQLSTATE '45000' SET message_text = 'Um funcionário não pode trabalhar mais que 40 horas. Por favor, entre com um novo número de horas!';
END IF;
END $$
DELIMITER ;

-- Exemplos

INSERT INTO 
	Trabalha
VALUES 
	(5, 2, 10);

UPDATE 
	Trabalha
SET 
	numHoras = 20
WHERE 
	idFunc = 3
	AND idProj = 10;


INSERT INTO
	FUNCIONARIO
VALUES 
	(100,'Teste 1','-','1965/11/05','F',1000,4,3);

INSERT INTO 
	Trabalha
VALUES
	(100, 2, 41);

/* Questão 26 */
CREATE USER 
	'teste'@'localhost' 
    IDENTIFIED BY 
		'0192';

GRANT
SELECT ON *.* TO 'teste'@'localhost';

-- No usuário 'teste':
use empresa;
SELECT * FROM Funcionario;

GRANT EXECUTE ON PROCEDURE Empresa.reajustaSalarioDepto TO 'teste'@'localhost';

-- No usuário 'teste':
CALL reajustaSalarioDepto(2, 1.2);

GRANT UPDATE (
	idFunc,
	nomeFunc,
	endereco,
	dataNasc,
	sexo,
	idSuperv,
	idDepto) ON 
    Empresa.Funcionario TO 
		'teste'@'localhost';

-- No usuário 'teste':
UPDATE 
	Funcionario
SET 
	nomeFunc = 'João depois da alteração'
WHERE 
	idFunc = 1;
UPDATE 
	Funcionario
SET 
	salario = 1700
WHERE 
	idFunc = 1;

REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'teste'@'localhost';

-- No usuário 'teste':
use empresa;

SELECT * 
FROM 
	Funcionario;

CALL reajustaSalarioDepto(2, 1.2);

UPDATE
	Funcionario
SET 
	nomeFunc = 'João depois da alteração'
WHERE 
	idFunc = 1;

UPDATE 
	Funcionario
SET 
	salario = 1700
WHERE 
	idFunc = 1;




