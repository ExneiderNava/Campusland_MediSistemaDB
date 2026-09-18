--1. numero de pacientes atendidos por cada medico
select 
    medicos.id_medico,
    concat_ws(' ', medicos.primer_nombre, medicos.primer_apellido) as nombre_medico,
    count(pacientes.id_paciente) as total_pacientes
from  medicos
left join pacientes on medicos.id_medico = pacientes.medico
group by medicos.id_medico, medicos.primer_nombre, medicos.primer_apellido;

--2. Total de días de vacaciones planificadas y disfrutadas por cada empleado

select 
    empleados.id_empleado,
    concat_ws(' ', empleados.primer_nombre, empleados.primer_apellido) as nombre_empleado,
    sum(vacaciones.vacaciones_planificadas) as total_planificadas,
    sum(vacaciones.vacaciones_disfrutadas) as total_disfrutadas
from  empleados
inner join vacaciones on empleados.id_empleado = vacaciones.id_empleado
group by empleados.id_empleado, empleados.primer_nombre, empleados.primer_apellido;

--3. Médicos con mayor cantidad de horas de consulta en la semana

select 
    id_medico,
    concat_ws(' ', primer_nombre, primer_apellido) as nombre_medico,
    horarios_consulta
from  medicos
order by horarios_consulta desc;

--4.  **Número de sustituciones realizadas por cada médico sustituto**

select 
    id_medico,
    concat_ws(' ', primer_nombre, primer_apellido) as nombre_medico,
    count(periodos_sustitucion) as total_periodos_registrados
from  medicos
where tipo = 'sustituto' and periodos_sustitucion is not null
group by id_medico, primer_nombre, primer_apellido;

--5.  **Número de médicos que están actualmente en sustitución**

select
	count(*) as medicos_en_sustitucion
from medicos
where tipo = 'sustituto' and periodos_sustitucion is not null;