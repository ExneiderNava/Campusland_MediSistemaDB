--creacion de la base de datos
create database if not exists medisistema;
-- usar la base de datos
use medisistema;

--cracion de la tabla empleados
create table empleados (
    id_empleado int auto_increment primary key,
    num_doc_empleado varchar(20) not null unique,
    primer_nombre varchar(50) not null,
    segundo_nombre varchar(50) null,
    primer_apellido varchar(50) not null,
    segundo_apellido varchar(50) null,
    cargo enum('ats', 'enfermeria', 'celador', 'administrativo') not null
 ) engine=InnoDB default charset=utf8mb4;

 --creacion de la tabla medicos

 create table medicos (
    id_medico int auto_increment primary key,
    num_doc_medico varchar(20) not null unique,
    primer_nombre varchar(50) not null,
    segundo_nombre varchar(50) null,
    primer_apellido varchar(50) not null,
    segundo_apellido varchar(50) null,
    tipo enum('titular', 'interno', 'sustituto') not null,
    horarios_consulta datetime not null,
    periodos_sustitucion varchar(100) null
)engine=InnoDB default charset=utf8mb4;

--creacion de tabla pacientes

create table pacientes (
	id_paciente int auto_increment primary key,
	num_doc_paciente varchar(20) not null unique,
	primer_nombre varchar(50) not null,
	segundo_nombre varchar(50) null,
	primer_apellido varchar(50) not null,
	segundo_apellido varchar(50) null,
    medico int not null,
    foreign key (medico) references medicos(id_medico) on delete cascade
)engine=InnoDB default charset=utf8mb4;

--creacion de la tabla vacaciones
create table vacaciones (
	id_vacacion int auto_increment primary key,
	vacaciones_planificadas int not null default 0,
	vacaciones_disfrutadas int not null default 0,
    id_medico int null,
    id_empleado int null,
    foreign key (id_medico) references medicos(id_medico) on delete cascade,
    foreign key (id_empleado) references empleados(id_empleado) on delete cascade,
    constraint chk_pertenencia_vacacion check (
		(id_medico is not null and id_empleado is null) or
        (id_medico is null and id_empleado is not null)
    )
)engine=InnoDB default charset=utf8mb4;