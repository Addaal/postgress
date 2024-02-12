CREATE TABLE "Equipos" (
  "id_equipo" SERIAL PRIMARY KEY,
  "nombre_equipo" varchar NOT NULL,
  "pais" varchar,
  "entrenador" varchar
);

CREATE TABLE "Grupos" (
  "id_grupo" SERIAL PRIMARY KEY,
  "nombre_grupo" varchar NOT NULL
);

CREATE TABLE "Equipos_Grupo" (
  "id_equipo" INTEGER,
  "id_grupo" INTEGER,
  "PRIMARY" KEY(id_equipo,id_grupo)
);

CREATE TABLE "Fases" (
  "id_fase" SERIAL PRIMARY KEY,
  "nombre_fase" varchar NOT NULL
);

CREATE TABLE "Partidos" (
  "id_partido" SERIAL PRIMARY KEY,
  "id_fase" INTEGER,
  "id_equipo_local" INTEGER,
  "id_equipo_visitante" INTEGER,
  "fecha_hora" TIMESTAMP,
  "lugar" varchar,
  "resultado" varchar
);

ALTER TABLE "Equipos_Grupo" ADD FOREIGN KEY ("id_equipo") REFERENCES "Equipos" ("id_equipo");

ALTER TABLE "Equipos_Grupo" ADD FOREIGN KEY ("id_grupo") REFERENCES "Grupos" ("id_grupo");

ALTER TABLE "Partidos" ADD FOREIGN KEY ("id_fase") REFERENCES "Fases" ("id_fase");

ALTER TABLE "Partidos" ADD FOREIGN KEY ("id_equipo_local") REFERENCES "Equipos" ("id_equipo");

ALTER TABLE "Partidos" ADD FOREIGN KEY ("id_equipo_visitante") REFERENCES "Equipos" ("id_equipo");
