require("Rfacebook")
library(ggplot2)
library(scales)
#fb_oauth <- fbOAuth(app_id="<app_id>", app_secret="<app_secret>",extended_permissions = TRUE)
token <- '<get_your_own_token>'

my_friends <- getFriends(token, simplify = FALSE)
head(my_friends)
fb <- getUsers("me", token)
head(fb)
my_friends_info <- getUsers(my_friends$id, token, private_info = TRUE)
head(my_friends_info)
page <- getPage("siliconvalleycodecamp", token, n = 500)
head(page)

