offers  <- read.csv("offers.csv")
category  <- unique(offers$category) #column 3
company  <- unique(offers$company) #column 4


file.create('transcat.csv')
con.read  <- file("transactions.csv", open = "r")
con.write  <- file('transcat.csv', open = "r")

col  <- 3
count  <- 1
row  <- 0
while(length(oneLine  <-  readLines(con.read, n=1, warn=F)) > 0){
    if(count !=1){
      vec  <- strsplit(oneLine, ",")
      if(as.numeric(vec[3]) %in% category){
        row  <- row  + 1
        towrite  <-  paste(as.character(vec), sep = ',')
        writeLines(text = towrite, con.write, sep = "\n")
      }
      
  }
  count  <- count   +  1
}



