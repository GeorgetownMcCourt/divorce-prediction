#################
# Parse data dictionary
#################

a = readLines("http://thedataweb.rm.census.gov/pub/cps/basic/201501-/January_2015_Record_Layout.txt")
str <-(gsub("\\t+","\t",a))
clean <- c()
lengths <- c()

dic = data.frame()
for(k in str){
  if((length(grep("[0-9] {0,1}- {0,1}[0-9]", k)) > 0) && (substr(k,1,1)!="\t") && (substr(k,1,1)!="") && (substr(k,1,1)!=" \t")){
    clean[length(clean) + 1] <- k
    temp = unlist(strsplit(k,"\t"))
    lengths[length(lengths)+1] <- length(temp)
    if(length(temp) %in% c(4:5)){
      dic <- rbind(dic, data.frame(temp[1],temp[2],temp[3],temp[length(temp)]))
    }
  }
}

names(dic) <- c("NAME", "SIZE", "DESCRIPTION", "LOCATION")

write.csv(dic[,c("NAME", "DESCRIPTION")], file = "/Users/cueland/Google Drive/School/670 - Data Science/Final Project/data_dic.csv", row.names = FALSE)

#################
# Parse 2016 from fixed width to csv
#################

mes <- c("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec")
baseurl <- "http://thedataweb.rm.census.gov/pub/cps/basic/201501-/"
posturl <- "pub.dat.gz"
year <- "16"

tmp <- tempfile()
l <- data.frame()
for (n in 1:12) {
  url <- paste(baseurl, mes[n], year, posturl, sep = "")
  download.file(url,tmp)
  d <- readLines(tmp)
  
  dic$start_loc <- as.numeric(lapply(as.character(dic$LOCATION), function(x) strsplit(x, "-")[[1]][1]))
  dic$stop_loc <- as.numeric(lapply(as.character(dic$LOCATION), function(x) strsplit(x, "-")[[1]][2]))
  
  data <- matrix(data = NA, nrow = length(d), ncol = nrow(dic))
  data <- as.data.frame(data)
  names(data) <- dic$NAME
  
  for(i in 1:nrow(dic)){
    start_loc <- dic$start_loc[i]
    stop_loc <- dic$stop_loc[i]
    col <- as.character(dic$NAME[i])
    data[,col] <- substr(d, start_loc, stop_loc)
  }
  l <- rbind(l, data)
  print(paste("done with ", n, sep = ""))
}

save(l, file = "/Users/cueland/Google Drive/School/670 - Data Science/Final Project/2016.RData", compress = TRUE)
