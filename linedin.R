require(devtools)
#install_github("mpiccirilli/Rlinkedin")
require(Rlinkedin)
#in.auth <- inOAuth()

app_name <- "codecamp"
consumer_key <- "7821c7xgkd70mh"
consumer_secret <- "HGndfOcno5xCXmQW"
in.auth <- inOAuth(app_name, consumer_key, consumer_secret)
my.profile <- getProfile(in.auth)
my.profile
sapply(my.profile, function(x) names(x))
df1 <- data.frame(t(sapply(my.profile, function(x){ 
  x[c("fname", "lname", "location")]})))

search.company <- searchCompanies(in.auth, "Cisco")
length(search.company)
sapply(search.company, function(x) names(x))
df2 <- data.frame(t(sapply(search.company, function(x){
  x[c("company_name", "website", "employee_count")]
})))
df2
search.comp <- searchCompanies(in.auth, keywords = "LinkedIn")
df3 <- data.frame(t(sapply(search.comp, function(x){
  x[c("company_id", "company_name", "universal_name", "website", "num_followers")]
})))
df3
