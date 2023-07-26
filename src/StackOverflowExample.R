

#  From stackoverflow, see the xml file that goes with this... 
# https://stackoverflow.com/questions/13579996/how-to-create-an-r-data-frame-from-an-xml-file

doc <- xmlParse("taxlots.shp.xml")
xmlToDataFrame(nodes=getNodeSet(doc1,"//attr"))[c("attrlabl","attrdef","attrtype","attrdomv")]
attrlabl             attrdef attrtype                                             attrdomv
1   COUNTY County abbreviation     Text CClackamas CountyMMultnomah CountyWWashington County

step1 <- xmlToDataFrame(nodes=getNodeSet(doc1,"//attrdomv/edom"))
step1
edomv            edomvd edomvds
1     C  Clackamas County        
2     M  Multnomah County        
3     W Washington County  

step2 <- paste(paste(step1$edomv, step1$edomvd, sep=" "), collapse="; ")
step2
[1] "C Clackamas County; M Multnomah County; W Washington County"

cbind(xmlToDataFrame(nodes= getNodeSet(doc1, "//attr"))[c("attrlabl", "attrdef", "attrtype")],
      attrdomv= step2)
attrlabl             attrdef attrtype                                                      attrdomv
1   COUNTY County abbreviation     Text C Clackamas County; M Multnomah County; W Washington County
