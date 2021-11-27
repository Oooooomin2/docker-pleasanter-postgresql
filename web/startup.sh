#!/bin/bash

cd /web/pleasanter/Implem.CodeDefiner
dotnet Implem.CodeDefiner.NetCore.dll _rds
cd /web/pleasanter/Implem.Pleasanter
dotnet Implem.Pleasanter.NetCore.dll