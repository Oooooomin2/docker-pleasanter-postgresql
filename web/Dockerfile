FROM mcr.microsoft.com/dotnet/sdk:5.0
RUN apt update \
    && apt install -y \
    wget \
    unzip
ADD ./resolv.conf /etc

EXPOSE 5000
ENV ASPNETCORE_URLS http://*:5000

RUN mkdir /web
WORKDIR /web
ADD ./startup.sh .
RUN wget https://github.com/Implem/Implem.Pleasanter.NetCore/releases/download/Pleasante_1.2.18.0/Pleasanter_1.2.18.0.zip \
    && unzip Pleasanter_1.2.18.0.zip \
    && chmod 744 /web/startup.sh
WORKDIR /web/pleasanter/Implem.Pleasanter/App_Data/Parameters
ADD ./Rds.json .
WORKDIR /web
ENTRYPOINT ["bash","startup.sh"]