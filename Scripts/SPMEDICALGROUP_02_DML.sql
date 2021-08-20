use SPMEDICALGROUP

--Tipo Usuario
insert into TipoUsuario (nomeTipoUsuario)
values ('Paciente'),('Medico')

select * from UsuarioPaciente
--Lugar
Insert into Lugar(CNPJ,nomeFantasia,endereco,HorarioFuncionamento, razaoSocial)
values ('1111111111111','SPMEDICALGROUP','Av. Inajar de Souza n 58', '8 às 22', 'SPMEDICALGROUP')


update Lugar
set nomeFantasia = 'Clinica MEDICALGROUP'
where idLugar = 1


--Tipo Consulta
insert into TipoConsulta(TipoDaConsulta)
values ('Acupultura'),('Anestesiologia'),('Angiologia'),('Cardiologia'),('Cirurgia Cardiovascular'),('Cirurgia da Mão'),
('Cirurgia do Aparelho Digestivo'),('Cirurgia Geral'),('Cirurgia Pediátrica'),('Cirurgia Plástica'),('Cirurgia Torácica'),
('Cirurgia Vascular'),('Dermatologia'),('Radioterapia'),('Urologia'),('Pediatria'),('Psiquiatria')


--Situacao
insert into Situacao(Descricao)
values ('Aprovada'),('Agendada'),('Cancelada')


--Tipo Usuario Medico
Insert into UsuarioMedico (idTipoUsuario,CRM, nomeUsuario, email, senha, Especialidade, Clinica, CNPJ,RazaoSocial)
values (2,'7777777777','José','jose.eduardo@spmedicalgroup.com','jose123','Psiquiatra','Clinica MEDICALGROUP','22222222222222','SPMEDIACALGROUP'),
		(2,'8888888888','Carlos','Carlos.Alberto@spmedicalgroup.com','Carlos321','Dermatologia','Clinica MEDICALGROUP','33333333333333','SPMEDIACALGROUP'),
		(2,'9999999999','Felipe','Felipe.Luis@spmedicalgroup.com','Felipe123','Pediatria','Clinica MEDICALGROUP','44444444444444','SPMEDIACALGROUP')


delete from UsuarioMedico
where idUsuarioMedico = 6

--Tipo Usuario Paciente
insert into UsuarioPaciente(idTipoUsuario, nomeUsuarioPaciente, email, senha, RG, CPF, endereço, DataNascimento, Telefone)
values (1,'João','João@gmail.com','Joao123','111111111111','11111111111','Rua Carlos Galhardo n74','19/08/2010','11 953308177'), 
(1,'Guilherme','Guizinho@gmail.com','Guizao123','222222222222','22222222222','Rua Alberto n54','11/04/2000','11 9876565431'), 
(1,'Bernardo','bebeto@gmail.com','beto123','333333333333','33333333333','Rua Joao Pessoa n175','19/02/1995','11 972084453'), 
(1,'Mariana','Marizinha@gmail.com','Mari123','444444444444','44444444444','Rua Vitor Wert n957','27/12/2001','11 34566543'), 
(1,'Joana','Joana@gmail.com','Joana123','555555555555','55555555555','Rua Joao Pessoa n257','05/03/1986','11 76566377'), 
(1,'Bruno','Bruninho@gmail.com','Brunao123','666666666666','66666666666','Rua Carlos Galhardo n57','09/12/2000','Não tem Telefone')


--Consultas
insert  into Consultas(idTipoConsulta, idLugar, Descricao, DataConsulta)
values (21,1,'O Paciente estava com a cabeça doendo e nariz escorrendo, imagino que seja uma gripe forte','19/08/2021'),
(10,1,'O paciente esta com uma forte dor no peito e com bastante dor de cabeça, vou medicar paracetamol de 12 em 12 horas','17/04/2020'),
(15,1,'Agendada','08/12/2021'),
(6,1,'O paciente estava com muito estress, tive que fazer a acupultura nele igual do filme "karete-kid"','20/08/2019'),
(22,1,'O paciente estava com muita ansiedade, imagino que deve ser por conta do começo da pandemia, e estava roendo a unha, então decidi dar uma bolinha de terapia pra ele ficar apertando quando se sentir ansioso','20/05/2020'),
(22,1,'Agendada','07/12/2021')



--Presença
insert into Presença(idUsuarioPaciente, idUsuarioMedico, idConsulta, idSituacao)
values(14,9,6,1), (15,7,10, 1),(16,8,9,1),(17,7,7,1), (18,8,8,2), (19,7,11,2)





