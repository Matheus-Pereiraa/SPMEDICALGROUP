use SPMEDICALGROUP

--Listar tipos de usuario
select * from TipoUsuario

-- listar os lugares
select * from Lugar

-- listar os tipos de consulta
select * from TipoConsulta

-- listar as situacoes
select * from Situacao

-- listar os medicos
select * from UsuarioMedico

-- listar os paciente
select * from UsuarioPaciente

-- listar as consultas
select * from Consultas

-- listar as presenças dos pacientes com medicos
select * from Presença





--Listar os dados das consultas, do lugar e dos tipos de Consulta
select l.nomeFantasia, C.DataConsulta, TC.TipoDaConsulta, l.endereco
from Consultas C
inner join TipoConsulta TC on C.idTipoConsulta = TC.idTipoConsulta
inner join Lugar l on C.idLugar = l.idLugar





--listar medicos com o tipos de usuario
select TP.nomeTipoUsuario,UM.CRM, nomeUsuario, UM.email, UM.Especialidade, UM.Clinica, UM.CNPJ, UM.RazaoSocial
from UsuarioMedico UM
inner join TipoUsuario TP on UM.idTipoUsuario = TP.idTipoUsuario






--listar pacientes com o tipo de usuario
select nomeTipoUsuario, nomeUsuarioPaciente, UP.email,UP.DataNascimento , UP.Telefone, UP.RG, UP.CPF, UP.endereço
from UsuarioPaciente UP
inner join TipoUsuario TP on UP.idTipoUsuario = TP.idTipoUsuario



--Vincular Medicos com Especialidades
select UM.nomeUsuario, TC.TipoDaConsulta
from UsuarioMedico UM
inner join Presença P on P.idUsuarioMedico = UM.idUsuarioMedico
inner join Consultas C on P.idConsulta = C.idConsulta
inner join TipoConsulta TC on TC.idTipoConsulta = C.idTipoConsulta
-- ALGUNS DESSES MEDICOS TEM MAIS DE UMA ESPECIALIDADE PORQUE QUANDO FIZ OS AGENDAMENTOS, ESQUECI DE FAZER MAIS MEDICOS PARA ESSAS ESPECIALIDADES








--listar dados dos Pacientes, dos medicos, consultas, situação da presença
select UP.nomeUsuarioPaciente, UM.nomeUsuario, C.DataConsulta, S.Descricao
from UsuarioMedico UM
inner join Presença	P on UM.idUsuarioMedico = P.idUsuarioMedico
inner join Consultas C on C.idConsulta = P.idConsulta
inner join TipoConsulta TC on TC.idTipoConsulta = C.idTipoConsulta
inner join TipoUsuario TU on TU.idTipoUsuario = UM.idTipoUsuario
inner join UsuarioPaciente UP on P.idUsuarioPaciente = UP.idUsuarioPaciente
inner join Situacao S on P.idSituacao = S.idSituacao




