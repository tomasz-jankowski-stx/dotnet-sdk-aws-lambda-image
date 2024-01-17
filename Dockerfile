FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-image

ENV PATH="/root/.dotnet/tools:${PATH}"

## Install needed tools
RUN apt-get update && apt-get -y install zip
RUN dotnet tool install -g Amazon.Lambda.Tools

