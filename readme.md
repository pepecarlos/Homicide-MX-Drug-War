﻿_----Work in Progress: I'm still gathering information on the military operations, some info may change----_


Homicide in Mexico and the Drug War
=========================================================
Homicides in Mexico have increased greatly since the government sent in the military to fight drug cartels in December 2006. These series of scripts explore various statistics related to homicides in Mexico. You'll probably want to read the associated blog post at [blog.diegovalle.net](http://blog.diegovalle.net)(hehe, when done!)


![homicide rate in Mexico 1990-2009](http://github.com/diegovalle/Homicide-MX-Drug-War/raw/master/historic/output/homicide-mx-1990-2008.png)

_While the drug war met with some success at first, the homicide rate increased 65% between 2007 and 2008_

------------------------------------------------------------------------------------------------------------------------

![Who's hiding homicides?](http://github.com/diegovalle/Homicide-MX-Drug-War/raw/master/historic/output/INEGIvsICES.png "Chihuahua is missing 1153 homicides")

_Scatter plot of the different homicide data (INEGI vs ICESI). That is, see if the police records (labeled ICESI) match those of the vital statistics system (labeled INEGI). The police records are missing over 1,100 homicides in Chihuahua alone! Note that the vital statistics are not much better missing almost 400 homicides in Sinaloa._

------------------------------------------------------------------------------------------------------------------------------------

![Ciudad Juarez](http://github.com/diegovalle/Homicide-MX-Drug-War/raw/master/county-month/output/ciudad-juarez.png)

_Monthly homicide rates in Ciudad Juarez. The city turned into the most violent in the world after the army took control of it. Even rushing in reinforcements didn't return the murder rate to its former levels. After three months the bloodshed became even greater._



Requirements
------------
*    You'll need to download a map of Mexico from the [ICESI](http://www.icesi.org.mx/estadisticas/estadisticas_encuestasTablas.asp)
*    You'll also need to download two maps of Mexico at the state and county level from the [INEGI](http://mapserver.inegi.org.mx/data/mgm/). You'll need to register to download them. They have to be version 3.1.1 or they won't work

    [Áreas Geoestadísticas Estatales y Zonas Pendientes por Asignar (6.47 Mb)](http://mapserver.inegi.org.mx/data/mgm/redirect.cfm?fileX=ESTADOS311)

    [Áreas Geoestadísticas Municipales y Zonas Pendientes por Asignar (30.6 Mb)](http://mapserver.inegi.org.mx/data/mgm/redirect.cfm?fileX=MUNICIPIOS311)

*    Edit the file maps-locations.r with the locations of the maps you downloaded
*    Imagemagick if you want to merge the state level homicide rate maps with the bar plots

Contents
--------
In the directories you'll find:

* accidents-homicides-suicides: Estimates the homicide rate for all of Mexico based on accidental and violent death data from the INEGI. As a bonus it includes the suicide and accident rates.
* conapo-pop-estimates: Estimates done by the CONAPO of the population of Mexico at the state level for the period 1990-2030
* county-maps: Choropleths of the murder rate by county in Mexico for the years 1990, 1995, 2000, 2006-2008
* drugs: Some regressions to see if drug consumption is correlated with the homicide rate
* county-months: Pretty graphics of the effect on the murder rate of sending the army to fight drug dealers
* historic: Plot of the Mexican homicide rate from 1990 to 2009, a
  comparison with that of the US, and England and Wales
* no-pasa-nada: A correlation plot of the different homicde data to figure out how thrust-worthy the Mexican statistics are.
* states: Pretty plots and choropleths of the homicide rate at the state level

Each directory contains its own readme so you may want to look at them

Data Sources
------------
Data Sources: Website of the [INEGI](http://www.inegi.org.mx/est/contenidos/espanol/proyectos/continuas/vitales/bd/mortalidad/MortalidadGeneral.asp?s=est&c=11144) for the
murder rate and [census data](http://www.inegi.org.mx/inegi/default.aspx?c=9260&s=est) for the years 1990, 1995, 2000 at the county level. [CONAPO](http://conapo.gob.mx/index.php?option=com_content&view=article&id=125&Itemid=203)
for population estimates at the national level (1990-2030), state level (1990-2030) and county level(2005-2030).

Check the readmes of each subdirectory for detailed information.


Output
-------
historic:

* A png chart of the homicide rate in Mexico
* A png chart of the homicide rate in Mexico, the US, and England and Wales

county-month:

* Time series divided into before and after military operations for high crime states or states where the military has been sent
* Chart of the murder rate in Ciudad Juarez before and after the military took over since it is the most violent city in the world

county-maps:

* Choropleths of Mexican Homicide Rates 1990, 1995, 2000, 2006-2008

accidents-homicides-suicides:

* csv files with the rates of accident, homicides and suicides

states:

* Maps and charts with the homicide rate at the state level
* Maps and charts with the change in homicide rate from 2006 to 2008
* If you run merge.bat you get a merged chart of the bar plots and maps
* A small multiples chart with the murder rate of each state from 1990 to 2008

Notes
-----
Where possible I tried using the official population estimates from the CONAPO, but for some of the choropleths (1990, 1995 and 2000) I used census data at the county level.

Author
-----
[Diego Valle](www.diegovalle.net)
