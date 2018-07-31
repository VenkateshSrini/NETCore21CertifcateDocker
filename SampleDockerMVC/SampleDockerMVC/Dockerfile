FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 9000
EXPOSE 44395

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src
COPY SampleDockerMVC/SampleDockerMVC.csproj SampleDockerMVC/
RUN dotnet restore SampleDockerMVC/SampleDockerMVC.csproj
COPY . .
WORKDIR /src/SampleDockerMVC
RUN dotnet build SampleDockerMVC.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish SampleDockerMVC.csproj -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "SampleDockerMVC.dll"]
#ENTRYPOINT ["./test.sh"]
