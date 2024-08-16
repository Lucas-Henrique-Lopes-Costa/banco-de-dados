/* Questão 22 */
DELIMITER //

CREATE PROCEDURE DevolveEmprestimo(
    IN p_idEmprestimo INT,
    OUT p_diasAtraso INT,
    OUT p_codigoVerificacao INT
)
BEGIN
    DECLARE v_dataDevolucao DATE;
    DECLARE v_dataLimite DATE;

    -- Verifica se o ID do empréstimo existe
    IF NOT EXISTS (SELECT 1 FROM Emprestimo WHERE idEmprestimo = p_idEmprestimo) THEN
        SET p_codigoVerificacao = 1;
        SET p_diasAtraso = 0;
        LEAVE;
    END IF;

    -- Verifica se o empréstimo já foi devolvido
    SELECT dataDevolucao, dataLimiteDevolucao INTO v_dataDevolucao, v_dataLimite
    FROM Emprestimo
    WHERE idEmprestimo = p_idEmprestimo;

    IF v_dataDevolucao IS NOT NULL THEN
        SET p_codigoVerificacao = 2;
        SET p_diasAtraso = 0;
        LEAVE;
    END IF;

    -- Se não houver inconsistências, procede com a devolução
    UPDATE Emprestimo
    SET dataDevolucao = NOW()
    WHERE idEmprestimo = p_idEmprestimo;

    SET p_codigoVerificacao = 0;

    -- Verifica se há atraso na devolução
    IF NOW() > v_dataLimite THEN
        SET p_diasAtraso = DATEDIFF(NOW(), v_dataLimite);
    ELSE
        SET p_diasAtraso = 0;
    END IF;

END //

DELIMITER ;




