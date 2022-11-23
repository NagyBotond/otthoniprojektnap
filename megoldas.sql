Mi MADAGASZKÁR fővárosa? 

SELECT `fovaros` FROM `orszagok` WHERE `orszag`="MADAGASZKÁR";

Melyik ország fővárosa OUAGADOUGOU?  

SELECT`orszag`  FROM `orszagok` WHERE `fovaros`="OUAGADOUGOU";

Melyik ország autójele a TT?

SELECT  `orszag`FROM `orszagok` WHERE `autojel`="TT"

Melyik ország pénzének jele az SGD?

SELECT  `orszag`FROM `orszagok` WHERE `penznem`="SGD"

Melyik ország nemzetközi telefon-hívószáma a 61?

SELECT  `orszag`FROM `orszagok` WHERE `telefon`=61

Mekkora területű Monaco?

SELECT  `terulet`FROM `orszagok` WHERE `orszag`="MONACO"

Hányan laknak Máltán?

  SELECT  `nepesseg`FROM `orszagok` WHERE `orszag`="MÁLTA"

Mennyi Japán népsűrűsége? 

SELECT  (`nepesseg`/`terulet`) as nepsurureg FROM `orszagok` WHERE `orszag`="JAPÁN"

Hány lakosa van a Földnek? 

SELECT  sum(`nepesseg`) FROM `orszagok`

Mennyi az országok területe összesen?

SELECT  sum(`terulet`) FROM `orszagok`

Mennyi az országok átlagos népessége? 

SELECT  AVG(`nepesseg`) FROM `orszagok`

Mennyi az országok átlagos területe?

SELECT  AVG(`terulet`) FROM `orszagok`

Mennyi a Föld népsűrűsége? 

SELECT  (`nepesseg`/`terulet`)as nepsuruseg FROM `orszagok`

Hány 1.000.000 km2-nél nagyobb területű ország van? 

SELECT  COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `terulet`>1000000

Hány 100 km2-nél kisebb területű ország van?

SELECT  COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `terulet`<100

Hány 20.000 főnél kevesebb lakosú ország van?

SELECT COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `nepesseg`<20

Hány országra igaz, hogy területe kisebb 100 km2-nél, vagy pedig a lakossága kevesebb 20.000 főnél?

SELECT COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `nepesseg`<20 OR `terulet`<100

Hány ország területe 50.000 és 150.000 km2 közötti? 

SELECT  COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `terulet`>50000 AND `terulet`<150

Hány ország lakossága 8 és 12 millió közötti?

SELECT COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `nepesseg`>8000 AND `nepesseg`>12000

Mely fővárosok népesebbek 20 millió főnél?

SELECT `fovaros` FROM `orszagok` WHERE `nep_fovaros`>20000

Mely országok népsűrűsége nagyobb 500 fő/km2-nél?

SELECT `orszag` FROM `orszagok` WHERE (`nepesseg`/`terulet`)>0.5

Hány ország államformája köztársaság?

SELECT  COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `allamforma`="köztársaság"

Mely országok pénzneme a kelet-karib dollár?

SELECT  COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `penznem`="kelet-karib dollár"

Hány ország nevében van benne az "ORSZÁG" szó? 

SELECT  COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `orszag`='*ORSZÁG*'

Mely országokban korona a hivatalos fizetőeszköz?

SELECT `orszag` FROM `orszagok` WHERE `penznem`='*korona*'

Mennyi Európa területe?

SELECT SUM(`terulet`) FROM `orszagok` WHERE `foldr_hely`='*Európa*'

Mennyi Európa lakossága?

SELECT SUM(`nepesseg`) FROM `orszagok` WHERE `foldr_hely`='*Európa*'

Mennyi Európa népsűrűsége?

SELECT (SUM(`nepesseg`)/`terulet`) FROM `orszagok` WHERE `foldr_hely`='*Európa*'

Hány ország van Afrikában?

SELECT  COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `foldr_hely`='*Afrika*'

Mennyi Afrika lakossága?

SELECT SUM(`nepesseg`) FROM `orszagok` WHERE `foldr_hely`='*Afrika*'

Mennyi Afrika népsűrűsége?

SELECT (SUM(`nepesseg`)/`terulet`) FROM `orszagok` WHERE `foldr_hely`='*Afrika*'

Melyek a szigetországok?  

SELECT  COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `foldr_hely`='*sziget*' AND `foldr_hely`!='*félsziget*'
Mely országok államformája hercegség, vagy királyság?

SELECT  COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `allamforma`='*hercegség*' OR `allamforma`='*királyság*'

Hány országnak nincs autójelzése?

SELECT  COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `autojel`=''

Mennyi a váltószáma az aprópénznek azokban az országokban, ahol nem 100?

SELECT `valtopenz` FROM `orszagok` WHERE `valtopenz`!='100 *'

Hány ország területe kisebb Magyarországénál? 

SELECT  COUNT(`id`)as orszagok_szama FROM `orszagok` WHERE `terulet`<(SELECT `terulet` FROM `orszagok` WHERE `orszag`='MAGYARORSZÁG')

Melyik a legnagyobb területű ország, és mennyi a területe? 

SELECT `orszag`,`terulet` FROM `orszagok` ORDER BY `terulet` DESC LIMIT 1

Melyik a legkisebb területű ország, és mennyi a területe?

SELECT `orszag`,`terulet` FROM `orszagok` ORDER BY `terulet` ASC LIMIT 1

Melyik a legnépesebb ország, és hány lakosa van?

SELECT `orszag`,`nepesseg` FROM `orszagok` ORDER BY `nepesseg` DESC LIMIT 1

Melyik a legkisebb népességű ország, és hány lakosa van?

SELECT `orszag`, `nepesseg` FROM `orszagok` ORDER BY  `nepesseg` ASC LIMIT 1

Melyik a legsűrűbben lakott ország, és mennyi a népsűrűsége?

SELECT `orszag`, (`nepesseg`/`terulet`)as nepsuruseg FROM `orszagok` ORDER BY  (`nepesseg`/`terulet`) DESC LIMIT 1

Melyik a legritkábban lakott ország, és mennyi a népsűrűsége?

SELECT `orszag`, (`nepesseg`/`terulet`)as nepsuruseg FROM `orszagok` ORDER BY  (`nepesseg`/`terulet`) ASC LIMIT 1

Melyik a legnagyobb afrikai ország és mekkora?

SELECT `orszag`,`terulet` FROM `orszagok` WHERE `foldr_hely`='*Afrika*' ORDER BY `terulet` DESC LIMIT 1

Melyik a legkisebb amerikai ország és hányan lakják?

SELECT `orszag`,`nepesseg` FROM `orszagok` WHERE `foldr_hely`='*Afrika*' ORDER BY `terulet` ASC LIMIT 1

Melyik az első három legsűrűbben lakott "országméretű" ország (tehát nem város- vagy törpeállam)?
 
SELECT `orszag` FROM `orszagok` WHERE foldr_hely`!='*törpeállam*' AND foldr_hely`!='*városállam*' ORDER BY  (`nepesseg`/`terulet`) DESC LIMIT 3

Melyik a világ hat legnépesebb fővárosa?

SELECT `fovaros` FROM `orszagok` ORDER BY nep_fovaros DESC LIMIT 6

Melyik tíz ország egy főre jutó GDP-je a legnagyobb? 

 SELECT `orszag` FROM `orszagok` ORDER BY (gdp/nepesseg) DESC LIMIT 10

Melyik tíz ország össz-GDP-je a legnagyobb?  

 SELECT `orszag` FROM `orszagok` ORDER BY gdp DESC LIMIT 10

Melyik országban a legszegényebbek az emberek?  

 SELECT `orszag` FROM `orszagok` ORDER BY (gdp/nepesseg) ASC LIMIT 1

Melyik a 40. legkisebb területű ország? 

SELECT `orszag` FROM `orszagok` ORDER BY `terulet` DESC 

Melyik a 15. legkisebb népsűrűségű ország?

Melyik a 61. legnagyobb népsűrűségű ország?

Melyik három ország területe hasonlít leginkább Magyaroszág méretéhez? 
 
Az emberek hányadrésze él Ázsiában? 

A szárazföldek mekkora hányadát foglalja el Oroszország?

Az emberek hány százaléka fizet euroval?

Hányszorosa a leggazdagabb ország egy főre jutó GDP-je a legszegényebb ország egy főre jutó GDP-jének?  

A világ össz-GDP-jének hány százalékát adja az USA?

A világ össz-GDP-jének hány százalékát adja az euroövezet?

Melyek azok az átlagnál gazdagabb országok, amelyek nem az európai vagy az amerikai kontinensen találhatóak?

Milyen államformák léteznek Európában? 

Hányféle államforma létezik a világon? 

Hányféle fizetőeszközt használnak Európában az eurón kívül?

Mely pénznemeket használják több országban is?  
 
Mely országok államformája egyedi?  
