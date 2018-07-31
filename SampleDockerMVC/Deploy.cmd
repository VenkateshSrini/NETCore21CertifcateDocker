REM 
REM dotnet dev-certs https -ep %APPDATA%\ASP.NET\https\SampleDockerMVC.pfx -p crypticpassword
REM dotnet dev-certs https --trust
REM dotnet user-secrets -p SampleDockerMVC\SampleDockerMVC.csproj set "Kestrel:Certificates:Development:Password" "crypticpassword"
SETX APPDATA %AppData%
REM docker-compose -f docker-compose.yml -f docker-compose.override.Dev.yml up --build --force-recreate
docker-compose -f docker-compose.yml -f docker-compose.override.prod.yml up --build --force-recreate