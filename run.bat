@echo off
set CLASSPATH=.;target/classes
for %%i in ("lib\*.jar") do call :append_classpath %%i
java TestClinic
goto :eof

:append_classpath
set CLASSPATH=%CLASSPATH%;%1
goto :eof 