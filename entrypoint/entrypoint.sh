#!/bin/bash
cp /home/yotta/gas.m /opt/mgweb/m 
cp /home/yotta/elec.m /opt/mgweb/m
cp /home/yotta/pcode.m /opt/mgweb/m
cp -f /home/yotta/_zmgweb.m /opt/mgweb/m
ydb <<< 'ZL "pcode.m"'
ydb <<< 'ZL "gas.m"'
ydb <<< 'ZL "elec.m"'
ydb <<< 'ZL "_zmgweb.m"'
ydb <<< 'D START^pcode'
ydb <<< 'D START1^pcode'
ydb <<< 'D START^gas'
ydb <<< 'D START^elec'
ydb <<< 'D MEAN^gas'
ydb <<< 'D MED^gas'
ydb <<< 'D MEAN^elec'
ydb <<< 'D CON^elec'
ydb <<< 'D CON^gas'
cd /opt/mgweb && /opt/mgweb/start
