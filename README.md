#Open data de méxico en mysql

## Catalogo en json y base de datos mysql de estados y municipios de mexico

Contiene un api que retorna los estados y sus municipos en formato json que consume la base de datos normalizada en mysql. Utiliza el framework slim e idiorm 

## Organización del proyecto
1. api : contiene los servicios que explotan la base de datos
2. other: Respaldo de base de datos y result .json

## Configuración del entorno
1. Instalar los módulos de php y mysql `apt-get install libapache2-mod-php5 php5-mcrypt` y `apt-get install php5-mysql`.
2. Activar el rewrite de apache `a2enmod rewrite` 
3. Permitir el listado de archivos en el archivo `apache2.conf`

`<Directory /var/www/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
</Directory>`

4. En caso de ser necesario especificar el socket en el archivo php.ini, el socket que se puede localizar con el comando desde consola de mysql `show variables like '%socket%'` 
5. Reiniciar el servidor apache