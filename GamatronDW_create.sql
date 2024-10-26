--/* clean tables */
--drop TABLE IF EXISTS DimTime;
--drop TABLE IF EXISTS DimCarrier;
--drop TABLE IF EXISTS FactFlight;

CREATE TABLE DimTiempo(
	tiempoKey int PRIMARY KEY,
	fechaCompleta varchar(10),
	anio int,
	trimestre int,
	mes int,
	nombreMes varchar(10),
	diaDeMes int,
	diaDeSemana int,
	nombreDia varchar(10) --Lunes 1
);

CREATE TABLE DimAerolinea(
	aerolineaKey int PRIMARY KEY,
	codigoAerolinea int,
	DOTIDAerolinea int,
	nombreAerolinea varchar(50)
);

CREATE TABLE FactVuelo(
	tiempoKey int,
	aerolineaKey int,
	tailNumber int,
	AeropuertoOrigenID int,
	CiudadOrigen varchar(3),
	nombreCiudadOrigen varchar(50),
	EstadoOrigen varchar(3),
	nombreEstadoOrigen varchar(50),
	aeropuertoDestinoID int,
	ciudadDestino varchar(3),
	nombreCiudadDestino varchar(50),
	estadoDestino varchar(3),
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
	atrasoLlegadaEnMin int,
	atrasoLlegadaMayor15Min int,
	atrasoLlegadaEnIntervalo varchar(50),
	CRSHoraLlegadaEnIntervalo varchar(50),
	cancelado varchar(10),
	codigoCancelado varchar(3),
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
	vueloDiferidoLlegoADestino varchar(5),
	duracionVueloDiferido int,
	distanciaAeropuertoDestino int
);
