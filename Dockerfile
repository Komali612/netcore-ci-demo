FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY src/SampleApi/SampleApi.csproj src/SampleApi/
RUN dotnet restore src/SampleApi/SampleApi.csproj
COPY . .
RUN dotnet publish src/SampleApi/SampleApi.csproj -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish .
EXPOSE 8080
ENTRYPOINT ["dotnet", "SampleApi.dll"]
