FROM mcr.microsoft.com/dotnet/sdk:5.0
RUN apt update \
    && apt install -y \
    wget \
    unzip
COPY ./resolv.conf /etc

EXPOSE 5000
ENV ASPNETCORE_URLS http://*:5000

RUN mkdir /web
WORKDIR /web
RUN wget https://github.com/Implem/Implem.Pleasanter.NetCore/releases/download/Pleasanter_1.2.24.2/Pleasanter_1.2.24.2.zip \
    && unzip Pleasanter_1.2.24.2.zip
COPY ./startup.sh /web
RUN chmod 744 /web/startup.sh
COPY ./Rds.json /web/pleasanter/Implem.Pleasanter/App_Data/Parameters
ENTRYPOINT ["bash","startup.sh"]