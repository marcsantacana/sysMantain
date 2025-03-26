# sysMantain

Este script de Bash automatiza tareas de mantenimiento del sistema, como la limpieza de cachés y archivos temporales, y la actualización del sistema y las aplicaciones. Además, configura el script para que se ejecute automáticamente al arrancar el sistema.

## Funcionalidades

El programa realiza las siguientes acciones:

1. **Limpiar cachés y archivos temporales**
    - Elimina los archivos temporales y limpia la caché del sistema utilizando los comandos `apt-get clean` y eliminando archivos en las carpetas `/tmp/` y `/var/tmp/`.

2. **Actualizar el sistema y las aplicaciones**
    - Actualiza el sistema y las aplicaciones instaladas utilizando los comandos `apt-get update` y `apt-get upgrade`. También elimina paquetes innecesarios con `apt-get autoremove`.

3. **Configurar el script para que se ejecute al inicio del sistema**
    - Configura el script para que se ejecute automáticamente al arrancar el sistema copiando el script en `/etc/init.d/` y configurando los permisos adecuados.

## Uso

1. Clona o descarga el script en tu máquina.
2. Asegúrate de tener permisos de ejecución:
    ```bash
    chmod +x sysMantain.sh
    ```
3. Ejecuta el script:
    ```bash
    ./sysMantain.sh
    ```
4. El script limpiará los archivos temporales, actualizará el sistema y las aplicaciones, y se configurará para ejecutarse en el inicio del sistema.

## Requisitos

- El script utiliza comandos que requieren privilegios de superusuario, como `sudo`, para limpiar archivos y actualizar el sistema.
- Asegúrate de tener permisos de administrador para poder ejecutar el script correctamente.

## Notas

- El script eliminará archivos temporales y limpiará cachés, lo cual puede liberar espacio en el sistema pero también eliminar archivos temporales de algunas aplicaciones.
- Al configurar el script para que se ejecute al arranque, se asegurará de que las tareas de mantenimiento se realicen automáticamente en cada inicio del sistema.
- Asegúrate de tener suficiente espacio en disco y conexión a Internet para la actualización del sistema.

## Licencia

Este proyecto está bajo la Licencia MIT.
