@echo off

rem Definir la ruta de instalación de Pentaho PDI
set PENTAHO_PATH=C:\data-integration1

rem Verifica si la ruta de Pentaho PDI es válida
if not exist "%PENTAHO_PATH%\kitchen.bat" (
    echo La ruta proporcionada para Pentaho PDI no es valida. Por favor, verifique la ruta e intente nuevamente.
    pause
    exit /b 1
)

rem Solicita al usuario la ruta base del proyecto
set /p BASE_PATH=Introduce la ruta del archivo a ser importado (por ejemplo, F:\DesafioNBCH):

rem Construye la ruta al archivo KJB con la definición del job
set FILE_PATH=%BASE_PATH%\KBJ\Job.kjb

rem Construye el parámetro rutaEntrada
set rutaEntrada=%BASE_PATH%

rem Imprime las rutas para depuración
echo Ruta al archivo KJB: %FILE_PATH%
echo Ruta del archivo a ser importado: %rutaEntrada%
echo Ruta de instalacion de Pentaho PDI: %PENTAHO_PATH%

rem Pausa para ver los mensajes de depuración
echo.
echo Verifica que las rutas sean correctas y presiona cualquier tecla para continuar...
pause >nul

rem Llama a Kitchen para ejecutar el job
call "%PENTAHO_PATH%\kitchen.bat" /file:%FILE_PATH% "-param:rutaEntrada=%rutaEntrada%" /level:Basic

rem Pausa para ver mensajes de salida antes de cerrar la ventana
echo.
echo Presiona cualquier tecla para salir...
pause >nul
