#install.packages("SocialMediaMineR")
require(SocialMediaMineR)
links <- c(
  "http://www.google.com/",
  "http://www.yahoo.com/",
  "http://www.cnn.com/",
  "http://www.nytimes.com/",
  "http://www.guardian.co.uk/",
  "http://www.bbc.co.uk"
  )
results <- get_socialmedia(links) 
results
get_facebook("http://www.google.com/")
get_pinterest("http://www.nytimes.com")
get_twitter("http://www.ibm.com")
