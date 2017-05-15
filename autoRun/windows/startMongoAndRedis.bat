@echo off
echo echo �1�7�1�7�1�7�1�7�1�7�1�7redis...
set redisConfAddr=%1
set mongoLogPath=%2
set mongoDbPath=%3
redis-server.exe %redisConfAddr% --loglevel verbose
If errorlevel 1 (
    echo Redis�1�7�0�4�1�7�1�7�1�7�1�7�1�7�1�7�1�7�1�7�0�8�0�6�1�7�1�7�1�7�1�7�1�7�1�7�1�7redis-cli.exe�1�7�1�7�1�7�1�7�1�7�1�7�0�1�1�7�1�7�1�7�1�7...
) Else (
    echo Redis�1�7�1�7�0�2�1�7�1�1�1�7�1�7�1�7�1�7�1�7�1�7�1�7�1�7�1�7�1�7�0�1�1�7�0�7�0�4�1�7�0�9�1�7�1�7�1�7�0�2...
)
ECHO.
echo �1�7�1�7�1�7�1�7�1�7�1�7Mongo...
If %username% == andyl (
    cd D:/mongo/bin
    D:
    mongod.exe --logpath=%mongoLogPath% --dbpath=%mongoDbPath% --journal --maxConns 20000
) Else (
    mongod.exe --logpath=%mongoLogPath% --dbpath=%mongoDbPath% --journal --maxConns 20000
)
echo %errorlevel%
If errorlevel 1 (
    echo Mongo�1�7�0�4�1�7�1�7�1�7�1�7�1�7�1�7�1�7�1�7�0�8�0�6�1�7�1�7�1�7�1�7�1�7�1�7�1�7mongo�1�7�1�7�1�7�1�7�1�7�1�7�0�1�1�7�1�7�1�7�1�7...
) Else (
    echo Mongo�1�7�1�7�0�2�1�7�1�1�1�7�1�7�1�7�1�7�1�7�1�7�1�7�1�7�1�7�1�7�0�1�1�7�0�7�0�4�1�7�0�9�1�7�1�7�1�7�0�2...
)