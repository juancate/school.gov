-- Ciudades
CREATE TABLE ciudades (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  departamento VARCHAR(100) NOT NULL
);

-- Colegios
CREATE TABLE colegios (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  telefono VARCHAR(100) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  ciudad INT UNSIGNED NOT NULL,
  FOREIGN KEY(ciudad) REFERENCES ciudades(id)
);

-- Consejo academico
CREATE TABLE consejo_academicos (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_profesor VARCHAR(100) NOT NULL,
  apellido_profesor VARCHAR(100) NOT NULL,
  departamento VARCHAR(100) NOT NULL
);

-- Grado
CREATE TABLE grado (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  grupo VARCHAR(100) NOT NULL,
  colegio INT UNSIGNED NOT NULL,
  FOREIGN KEY(colegio) REFERENCES colegios(id)
);

-- Estudiante
CREATE TABLE estudiante (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  codigo INT UNSIGNED NOT NULL,
  nombres VARCHAR(100) NOT NULL,
  apellidos VARCHAR(100) NOT NULL,
  grado INT UNSIGNED NOT NULL,
  FOREIGN KEY(grado) REFERENCES grado(id)
);

-- Eleccion
CREATE TABLE eleccion (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  inicio_periodo DATE NOT NULL,
  fin_periodo DATE NOT NULL,
  descripcion TEXT NOT NULL
);

-- Candidato
CREATE TABLE candidato (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_estudiante INT UNSIGNED NOT NULL,
  id_eleccion INT UNSIGNED NOT NULL,
  FOREIGN KEY(id_estudiante) REFERENCES estudiante(id),
  FOREIGN KEY(id_eleccion) REFERENCES eleccion(id)
);

-- Votacion
CREATE TABLE votacion (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_estudiante INT UNSIGNED NOT NULL,
  id_eleccion INT UNSIGNED NOT NULL,
  id_candidato INT UNSIGNED NOT NULL,
  FOREIGN KEY(id_estudiante) REFERENCES estudiante(id),
  FOREIGN KEY(id_eleccion) REFERENCES eleccion(id),
  FOREIGN KEY(id_candidato) REFERENCES candidato(id)
);
