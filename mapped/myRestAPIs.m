meangaslow(req);
 new pcode,lat,long,mean
 S pcode=""
 S mean=""
 S cnt=0
 F  S mean=$O(^GASMEAN(mean)) Q:mean=""!(cnt=10)  D
 . S pcode=""
 . F  S pcode=$O(^GASMEAN(mean,pcode)) Q:pcode=""!(cnt=10)  D
 .. Q:'$D(^PCODE(pcode))
 .. S pcode1=$P(pcode," ",1)
 .. S city=$G(^PCODECITY(pcode1))
 .. S lat=$P(^PCODE(pcode),",",2)
 .. S long=$P(^PCODE(pcode),",",1)
 .. set cnt=cnt+1
 .. set res(cnt,"pcode")=pcode
 .. set res(cnt,"mean")=mean
 .. set res(cnt,"lat")=lat
 .. set res(cnt,"long")=long 
 .. set res(cnt,"city")=city
 QUIT $$response^%zmgweb(.res)
mediangaslow(req);
 new pcode,lat,long,mean
 S pcode=""
 S median=""
 S cnt=0
 F  S median=$O(^GASMEDIAN(median)) Q:median=""!(cnt=10)  D
 . S pcode=""
 . F  S pcode=$O(^GASMEDIAN(median,pcode)) Q:pcode=""!(cnt=10)  D
 .. Q:'$D(^PCODE(pcode))
 .. S pcode1=$P(pcode," ",1)
 .. S city=$G(^PCODECITY(pcode1))
 .. S lat=$P(^PCODE(pcode),",",2)
 .. S long=$P(^PCODE(pcode),",",1)
 .. set cnt=cnt+1
 .. set res(cnt,"pcode")=pcode
 .. set res(cnt,"median")=median
 .. set res(cnt,"lat")=lat
 .. set res(cnt,"long")=long
 .. set res(cnt,"city")=city
 QUIT $$response^%zmgweb(.res)
meaneleclow(req);
 new pcode,lat,long,mean
 S pcode=""
 S mean=""
 S cnt=0
 F  S mean=$O(^ELECMEAN(mean)) Q:mean=""!(cnt=10)  D
 . S pcode=""
 . F  S pcode=$O(^ELECMEAN(mean,pcode)) Q:pcode=""!(cnt=10)  D
 .. Q:'$D(^PCODE(pcode))
 .. S pcode1=$P(pcode," ",1)
 .. S city=$G(^PCODECITY(pcode1))
 .. S lat=$P(^PCODE(pcode),",",2)
 .. S long=$P(^PCODE(pcode),",",1)
 .. set cnt=cnt+1
 .. set res(cnt,"pcode")=pcode
 .. set res(cnt,"mean")=mean
 .. set res(cnt,"lat")=lat
 .. set res(cnt,"long")=long
 .. set res(cnt,"city")=city
 QUIT $$response^%zmgweb(.res)
meangashigh(req);
 new pcode,lat,long,mean
 S pcode=""
 S mean=""
 S cnt=0
 F  S mean=$O(^GASMEAN(mean),-1) Q:mean=""!(cnt=10)  D
 . S pcode=""
 . F  S pcode=$O(^GASMEAN(mean,pcode),-1) Q:pcode=""!(cnt=10)  D
 .. Q:'$D(^PCODE(pcode))
 .. S pcode1=$P(pcode," ",1)
 .. S city=$G(^PCODECITY(pcode1))
 .. S lat=$P(^PCODE(pcode),",",2)
 .. S long=$P(^PCODE(pcode),",",1)
 .. set cnt=cnt+1
 .. set res(cnt,"pcode")=pcode
 .. set res(cnt,"mean")=mean
 .. set res(cnt,"lat")=lat
 .. set res(cnt,"long")=long
 .. set res(cnt,"city")=city
 QUIT $$response^%zmgweb(.res)
mediangashigh(req);
 new pcode,lat,long,median
 S pcode=""
 S median=""
 S cnt=0
 F  S median=$O(^GASMEDIAN(median),-1) Q:median=""!(cnt=10)  D
 . S pcode=""
 . F  S pcode=$O(^GASMEDIAN(median,pcode),-1) Q:pcode=""!(cnt=10)  D
 .. Q:'$D(^PCODE(pcode))
 .. S pcode1=$P(pcode," ",1)
 .. S city=$G(^PCODECITY(pcode1))
 .. S lat=$P(^PCODE(pcode),",",2)
 .. S long=$P(^PCODE(pcode),",",1)
 .. set cnt=cnt+1
 .. set res(cnt,"pcode")=pcode
 .. set res(cnt,"median")=median
 .. set res(cnt,"lat")=lat
 .. set res(cnt,"long")=long
 .. set res(cnt,"city")=city
 QUIT $$response^%zmgweb(.res)
meanelechigh(req);
 new pcode,lat,long,mean
 S pcode=""
 S mean=""
 S cnt=0
 F  S mean=$O(^ELECMEAN(mean),-1) Q:mean=""!(cnt=10)  D
 . S pcode=""
 . F  S pcode=$O(^ELECMEAN(mean,pcode),-1) Q:pcode=""!(cnt=10)  D
 .. Q:'$D(^PCODE(pcode))
 .. S pcode1=$P(pcode," ",1)
 .. S city=$G(^PCODECITY(pcode1))
 .. S lat=$P(^PCODE(pcode),",",2)
 .. S long=$P(^PCODE(pcode),",",1)
 .. set cnt=cnt+1
 .. set res(cnt,"pcode")=pcode
 .. set res(cnt,"mean")=mean
 .. set res(cnt,"lat")=lat
 .. set res(cnt,"long")=long
 .. set res(cnt,"city")=city
 QUIT $$response^%zmgweb(.res)
conelechigh(req);
 new pcode,lat,long,con
 S pcode=""
 S con=""
 S cnt=0
 F  S con=$O(^ELECCON(con),-1) Q:con=""!(cnt=10)  D
 . S pcode=""
 . F  S pcode=$O(^ELECCON(con,pcode),-1) Q:pcode=""!(cnt=10)  D
 .. Q:'$D(^PCODE(pcode))
 .. S pcode1=$P(pcode," ",1)
 .. S city=$G(^PCODECITY(pcode1))
 .. S lat=$P(^PCODE(pcode),",",2)
 .. S long=$P(^PCODE(pcode),",",1)
 .. set cnt=cnt+1
 .. set res(cnt,"pcode")=pcode
 .. set res(cnt,"con")=con
 .. set res(cnt,"lat")=lat
 .. set res(cnt,"long")=long
 .. set res(cnt,"city")=city
 QUIT $$response^%zmgweb(.res)
congashigh(req);
 new pcode,lat,long,con
 S pcode=""
 S con=""
 S cnt=0
 F  S con=$O(^GASCON(con),-1) Q:con=""!(cnt=10)  D
 . S pcode=""
 . F  S pcode=$O(^GASCON(con,pcode),-1) Q:pcode=""!(cnt=10)  D
 .. Q:'$D(^PCODE(pcode))
 .. S pcode1=$P(pcode," ",1)
 .. S city=$G(^PCODECITY(pcode1))
 .. S lat=$P(^PCODE(pcode),",",2)
 .. S long=$P(^PCODE(pcode),",",1)
 .. set cnt=cnt+1
 .. set res(cnt,"pcode")=pcode
 .. set res(cnt,"con")=con
 .. set res(cnt,"lat")=lat
 .. set res(cnt,"long")=long
 .. set res(cnt,"city")=city
 QUIT $$response^%zmgweb(.res)
coneleclow(req);
 new pcode,lat,long,con
 S pcode=""
 S con=""
 S cnt=0
 F  S con=$O(^ELECCON(con)) Q:con=""!(cnt=10)  D
 . S pcode=""
 . F  S pcode=$O(^ELECCON(con,pcode)) Q:pcode=""!(cnt=10)  D
 .. Q:'$D(^PCODE(pcode))
 .. S pcode1=$P(pcode," ",1)
 .. S city=$G(^PCODECITY(pcode1))
 .. S lat=$P(^PCODE(pcode),",",2)
 .. S long=$P(^PCODE(pcode),",",1)
 .. set cnt=cnt+1
 .. set res(cnt,"pcode")=pcode
 .. set res(cnt,"con")=con
 .. set res(cnt,"lat")=lat
 .. set res(cnt,"long")=long
 .. set res(cnt,"city")=city
 QUIT $$response^%zmgweb(.res)
congaslow(req);
 new pcode,lat,long,con
 S pcode=""
 S con=""
 S cnt=0
 F  S con=$O(^GASCON(con)) Q:con=""!(cnt=10)  D
 . S pcode=""
 . F  S pcode=$O(^GASCON(con,pcode)) Q:pcode=""!(cnt=10)  D
 .. Q:'$D(^PCODE(pcode))
 .. S pcode1=$P(pcode," ",1)
 .. S city=$G(^PCODECITY(pcode1))
 .. S lat=$P(^PCODE(pcode),",",2)
 .. S long=$P(^PCODE(pcode),",",1)
 .. set cnt=cnt+1
 .. set res(cnt,"pcode")=pcode
 .. set res(cnt,"con")=con
 .. set res(cnt,"lat")=lat
 .. set res(cnt,"long")=long
 .. set res(cnt,"city")=city
 QUIT $$response^%zmgweb(.res)





