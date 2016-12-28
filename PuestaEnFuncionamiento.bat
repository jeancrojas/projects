@echo off
setlocal enabledelayedexpansion
setlocal
set /a resultadoDeEjecucion=0

ping rucio > NUL


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

timeout 5 > NUL
REM start outlook

timeout 5 > NUL
REM start /b iexplore http://intranet

timeout 5 > NUL
start /b notepad

timeout 5 > NUL
REM start /b mstsc /v:nameServer
start /b winword
exit