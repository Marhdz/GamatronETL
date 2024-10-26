--/* clean tables */
drop TABLE IF EXISTS DimTiempo;
drop TABLE IF EXISTS DimAerolinea;
drop TABLE IF EXISTS FactVuelo;

/* DDL for the date dimension */
create table DimTiempo (
date_key int not null,
full_date smalldatetime,
day_of_week tinyint,
day_num_in_month tinyint,
day_num_overall smallint,
day_name varchar(9),
day_abbrev char(3),
weekday_flag varchar(8),
week_num_in_year tinyint,
week_num_overall smallint,
week_begin_date smalldatetime,
week_begin_date_key int,
month tinyint,
month_num_overall smallint,
month_name varchar(9),
month_abbrev char(3),
quarter tinyint,
year smallint,
yearmo int,
fiscal_month tinyint,
fiscal_quarter tinyint,
fiscal_year smallint,
last_day_in_month_flag varchar(15),
same_day_year_ago_date smalldatetime,
primary key (date_key))
;

CREATE TABLE DimAerolinea(
	aerolineaKey int identity(1,1) PRIMARY KEY,
	codigoAerolinea varchar(50),
	nombreAerolinea varchar(100)
);

CREATE TABLE FactVuelo(
	tiempoKey int,
	aerolineaKey int,
	aerolineaNombre varchar(100),
	tailNumber varchar(10),

	aeropuertoOrigenID int,
	ciudadOrigen varchar(10),
	nombreCiudadOrigen varchar(50),
	estadoOrigen varchar(10),
	nombreEstadoOrigen varchar(50),

	aeropuertoDestinoID int,
	ciudadDestino varchar(10),
	nombreCiudadDestino varchar(50),
	estadoDestino varchar(10),
	nombreEstadoDestino varchar(50),

	CRSHoraSalida varchar(5),
	horaSalidaActual varchar(5),
	difHoraSalida int,
	atrasoSalidaEnMin int,
	atrasoSalidaMayorDe15min varchar(10),
	atrasoSalidaEnIntervalo varchar(50),
	CRSHoraSalidaEnIntervalo varchar(50),

	CRSHoraLlegada varchar(5),
	horaLlegadaActual varchar(5),
	diffHoraLlegada int,
	atrasoLlegadaEnMin int,
	atrasoLlegadaMayor15Min varchar(10),
	atrasoLlegadaEnIntervalo varchar(50),
	CRSHoraLlegadaEnIntervalo varchar(50),

	cancelado varchar(20),
	codigoCancelado varchar(10),
	diferido varchar(10),

	CRSDuracion varchar(10),
	duracionActual varchar(10), --si cancelado 0, si diferido que llegó a su destino viene de DivActualElapseTime
	tiempoEnAire int,
	distancia int,
	distanciaEnIntervalo varchar(10), 
	atrasoAerolinea int,
	atrasoClima int,
	atrasoNAS int,
	atrasoSeguridad int,
	atrasoAeronave int,
	cantAterrizajesDiferidosEnAeropuerto int,
	vueloDiferidoLlegoADestino varchar(10),
	duracionVueloDiferido int,
	distanciaAeropuertoDestino int
);
