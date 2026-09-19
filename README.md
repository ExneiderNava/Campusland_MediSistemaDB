🏥 MediSistema Realizado por: Exneider Nava <br>
Motor de Base de Datos: MySQL Server (Engine: InnoDB, Charset: utf8mb4)<br>
📌 Descripción del Proyecto El proyecto<br>
MediSistema consiste en el diseño e implementación de una base de datos relacional para centralizar y optimizar la gestión de información en un centro de salud. El sistema abarca el registro de personal médico, empleados no médicos, asignación de pacientes y el control detallado de vacaciones planificadas frente a las disfrutadas.<br>
📐 Estructura del Modelo Relacional <br>
El esquema está conformado por 4 tablas principales diseñadas en MySQL respetando la integridad referencial y restricciones de calidad de datos. <br> 
empleados: Registra al personal no médico (administrativos, ATS, auxiliares de enfermería, celadores). <br>
medicos: Almacena la información de los médicos (titulares, interinos, sustitutos), sus horarios de consulta y períodos de sustitución. <br>
pacientes: Contiene la información de los pacientes y la vinculación con su médico asignado. <br>
vacaciones: Controla las vacaciones planificadas y disfrutadas, asegurando mediante un CHECK de pertenencia que cada registro se asocie únicamente a un médico o a un empleado.
