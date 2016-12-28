@echo off
setlocal enabledelayedexpansion
setlocal
set /a resultadoDeEjecucion=0

ping rucio > NUL

REM El siguiente loop comprueba que el PC tenga
REM comunicación, hasta que no tenga comunicación
REM no saldrá del loop

REM Podeis cambiar "ping google.es" por el nombre de  
REM un servidor de vuestra red, debido a que no siempre 
REM es posible hacer ping a google por restricciones.

:loop
set /a resultadoDeEjecucion=%errorlevel%
if !resultadoDeEjecucion! NEQ 0 (
	cls
	echo ***Todavia no hay comunicacion***
	ping google.com > NUL
	goto :loop
)

cls

echo ***Inicializando las aplicaciones***

REM Las ejecución de las aplicaciones estan comentadas
REM cambiarla por la que deseeis y descomentarlas.

timeout 5 > NUL
REM Sample: start outlook

timeout 5 > NUL
REM Sample: start /b iexplore http://intranet

timeout 5 > NUL
REM Sample: start /b notepad

timeout 5 > NUL
REM Sample: start /b mstsc /v:nameServer

exit
