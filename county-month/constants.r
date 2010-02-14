########################################################
#####       Author: Diego Valle Jones
#####       Website: www.diegovalle.net
#####       Date Created: Thu Feb 04 13:35:41 2010
########################################################
#Constants consisting of the start of the military operations against
#drug cartels

#Each state has a number assigned to them in the csv file
baja.california <- "^02"
chihuahua <- "^08"
durango <- "^10"
michoacan <- "^16"
sinaloa <- "^25"
sonora <- "^26"

guerrero <- "^12"
oaxaca <- "^20"

tamaulipas <- "^28"
nuevo.leon <- "^19"

########################################################
#Start of the joint operations to combat drug cartels
########################################################
#From: Wikipedia
op.mich <- as.Date("12/11/2006", "%m/%d/%Y")

#From:http://www.pgr.gob.mx/cmsocial/coms07/210107%20resultado%20de%20operaciones%20conjuntas.ppt
#OPERATIVO CONJUNTO  TIJUANA
op.tij <-  as.Date("01/03/2007", "%m/%d/%Y")
#Operativo Conjunto Guerrero
#http://pre.guerrero.gob.mx/index.php?P=leearticulo&ArtOrder=ReadArt&Article=1314&text=1
op.gue <- as.Date("01/15/2007", "%m/%d/%Y")
#Operativo Conjunto Tri�ngulo Dorado(SINALOA, DURANGO Y CHIHUAHUA)
op.tria.dor <- as.Date("01/13/2007", "%m/%d/%Y")
op.tria.dor.II <- as.Date("05/01/2007", "%m/%d/%Y")
op.tria.dor.III <- as.Date("02/01/2008", "%m/%d/%Y")

#Operativo Conjunto Chihuaha
#www.el-mexicano.com.mx%2Fnoticias%2Fnacional%2F2009%2F03%2F02%2Fsitian-militares-ciudad-juarez.aspx&ei=OoZgS-nmA4XYtgOHwpGzCw&usg=AFQjCNH5AvHSTNwSpMPqT98OuiSYA8kbjg&sig2=rucCCB325xG_lYgmU_Rodw
#http://www.juarezpress.com/not_detalle.php?id_n=12641&busca=sedena
#El secretario de la Defensa, Guillermo Galv�n, informa que para esa fecha ya estaban destacamentados en ciudad Ju�rez 539 efectivos, y anuncia arribo de tres H�rcules.
op.chi <- as.Date("03/27/2008", "%m/%d/%Y")

#Operaci�n Conjunta Culiac�n-Navolato
#http://www.tabascohoy.com.mx/nota.php?id_nota=155210
op.sin <-  as.Date("05/13/2008", "%m/%d/%Y")

#http://www.elsiglodedurango.com.mx/descargas/pdf/2007/02/19/19dgo08a.pdf?v
op.tam.nl <- as.Date("02/17/2007","%m/%d/%Y")

#Operativo Sonora
#http://unafuente.com/01-04-2008/narcotrafico-senalan-al-mexicano-oliverio-acosta-como-lider-del-narco-en-guatemala-marzo-finaliza-con-81-personas-asesinadas-en-sinaloa-presume-ejercito-resultados-de-sonora-uno-desatan-caceria-contra/
op.son <- as.Date("03/07/2008", "%m/%d/%Y")

#Reinfocements for Ciudad Juarez
#2,000 arrived March 1st 2009 and another 3,000 arrived in the
#next 15 days
#http://eleconomista.com.mx/notas-online/politica/2009/03/01/arriban-militares-ciudad-juarez
cdj.rein <- as.Date("03/01/2009", "%m/%d/%Y")

#Alfredo Beltr�n Leyva Caputred
#http://www.sedena.gob.mx/index.php?id_art=1169
bel.ley <- as.Date("01/21/2008", "%m/%d/%Y")


#Group  dates into intervals
cutDates <- function(df, dates) {
  vec <- c(df$Date[1], dates, df$Date[nrow(df)] + 1000)
  cut(df$Date, vec)
}
