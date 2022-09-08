START
 S FIL="/home/yotta/ukpostcodes1.csv"
 O FIL:(read)
 U FIL F  Q:$ZEOF=1  D
 . R LIN
 . S PCODE=$P(LIN,",",2)
 . Q:PCODE="id"!(PCODE="")
 . S LAT=$P(LIN,",",3)
 . S LONG=$P(LIN,",",4)
 . S ^PCODE(PCODE)=LAT_","_LONG
 QUIT
START1
 S FIL="/home/yotta/postcodes.csv"
 O FIL:(read)
 U FIL F  Q:$ZEOF=1  D
 . R LIN
 . S PCODE=$P(LIN,",",1)
 . S PCODE=$TR(PCODE,"""","")
 . Q:PCODE="postcode"!(PCODE="")
 . S CITY=$P(LIN,",",6)
 . S CITY=$TR(CITY,"""","")
 . S ^PCODECITY(PCODE)=CITY
 QUIT

