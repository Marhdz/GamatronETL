# GamatronETL

Parcial 3 RH16005
Romero Hernández Michelle Alejandra

## Definición de carpetas.
El esquema de la organización de las carpetas puede verse en **estructuraCarpetas.txt**, aquí se explicara cada sección.

- **archive**. Este folder contiende los archivos csv a cargar, se coloca en el primer nivel del proyecto. Esta carpeta contiene los archivos a cargar tanto de FullData como de Incremental, y no se incluye en el repositorio por motivo de peso de los archivos. 
	-  **flightInc**. Está carpeta contendrá los archivos incrementales a cargar, luego de la carga estos archivos deberán ser movidos para evitar duplicación de datos en el DW
	- **raw**. Esta carpeta contendrá los archivos FullData a cargar. En caso sea necesario realizar una recarga limpia de los datos.
	- **Airlines.csv**. Este archivo contiene los datos a cargar en la dimension de aerolineas, una vez cargada no es necesario volverla a cargar para ejecutar el resto de cargas del ETL.
	- **Ch3-SampleDateDim.xls** Este archivo se utiliza para cargar la dimensión de tiempo. Contiene los pasos a seguir para esto.
	- **readme.html** La información sobre los atributos en los csv tanto para las cargas de los vuelos.
	- **readme.md** La información sobre los archivos de carga en formato .md

- **GamatronETL**. Este folder contiene el proyecto realizado en VisualStudio y los componentes que han sido creados. Se mencionarán los elementos relevantes para esta presentación.
	- **Airline.dtsx** Este archivo es el ETL para los datos de aerolineas
    - **FlightsFullData** Este archivo realiza el procesamiento de los datos completos para la tabla de hechos del DW. Procesa todos los datos históricos presentes en la carpeta **raw** razón por la cual toma mucho más tiempo que una carga incremental.
    - **FlightsInc** Este archivo realiza el proceso de carga incremental para la tabla de hechos, utiliza el o los archivos presentes en la carpeta **flightInc** y agrega los datos a los ya presentes en el DW.
    - **GamatronETL.sln** Es la solución presentada. Al abrir este archivo Visual Studio presenta el proyecto completo.

- **Media** En esta carpeta se encuentran imagenes relacionadas al proyecto.
    - **DatabaseDiagram.png** El diagrama del DW propuesto para la solución
	- **RH16005_solucion.mkv** Video con la descripción de la solución

- **SQLscript** Esta carpeta contiene los script utilizados
    -   **GamatronDW_create.sql** Script que inicializa el DW, las dimensiones y la tabla de hechos con sus atributos.

- **estructuraCarpetas.txt** Presenta un esquema con la organización de las carpetas aqui descritas.