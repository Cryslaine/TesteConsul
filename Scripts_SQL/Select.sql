USE consultorio

----*** Retorna todos os paciente da epecialidade 'Neurologia'
SELECT * FROM tb_Atendimento aten
INNER JOIN tb_Especialidades esp  
ON  aten.cd_especialidade = esp.cd_especialidade
WHERE aten.cd_especialidade = 2

----*** Retorna dos os prontuarios referente a um determinado paciente
SELECT pac.nome_paciente, prt.descricao_prontuario, aten.data_atendimento
FROM tb_Prontuario prt
INNER JOIN tb_Paciente pac
ON prt.id_paciente = pac.id_paciente
INNER JOIN tb_Atendimento aten
ON prt.id_atendimento = aten.id_atendimento
WHERE prt.id_paciente = 4 AND aten.data_atendimento >= DATEADD(MONTH,-6, GETDATE())

