--insertando empleados
insert into empleados (
num_doc_empleado,
primer_nombre,
segundo_nombre,
primer_apellido,
segundo_apellido,
cargo)
values
( '1111', 'Carlos', 'Alberto', 'Gomez', 'Perez', 'administrativo'),
( '2222', 'Maria', 'Joaquina', 'Perez', 'Sanchez', 'ats'),
( '3333', 'Alvaro', 'Andres', 'Manrrique', 'Torres', 'enfermeria'),
( '4444', 'Jose', 'Juan', 'Urbina', 'Lopez', 'celador');

--insertando medicos
insert into medicos (
num_doc_medico,
primer_nombre,
segundo_nombre,
primer_apellido,
segundo_apellido,
tipo,
horarios_consulta,
periodos_sustitucion)
values
( '7777', 'Juan', 'Pablo', 'Perez', 'Garcia', 'titular', '2026-09-20 08:00:00', 'niega'),
( '8888', 'Maria', 'Fernanda', 'Gutierres', 'Hernandez', 'interno', '2026-09-20 09:00:00', 'niega'),
( '9999', 'Andres', null , 'Vazques', 'Velazques', 'sustituto', '2026-09-20 10:00:00', 'desde el 01 al 30 del 09');

--insertando pacientes
insert into pacientes (
num_doc_paciente,
primer_nombre,
segundo_nombre,
primer_apellido,
segundo_apellido,
medico
)
values
( '101010A', 'Sofia', 'Julieta', 'Ramirez', 'Ocanto', 1),
( '202020B', 'Asly', 'Noemy', 'Hernandez', 'Nava', 2),
( '303030C', 'Isaac', 'Alfonso', 'Nava', 'Archila', 3);

--insertando vacaciones
insert into  vacaciones(
vacaciones_planificadas,
vacaciones_disfrutadas,
id_medico,
id_empleado
)
values
( 25, 15 , 1, null),
( 15, 5 , 2, null),
( 22, 12 , null, 1),
( 10, 8 , null, 2);