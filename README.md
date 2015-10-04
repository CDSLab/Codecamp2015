# Codecamp2015
Silicon valley codecamp at evergreen valley college https://www.siliconvalley-codecamp.com/
## Data Scientist tutorial
### Download the Codecamp presentation here: https://github.com/CDSLab/Codecamp2015/files/7320/codecamp.pdf

### Analyze data produced by social media applications (Rfacebook)
Before you can use Rfacebook package to analyze data, you need to follow the steps below:
 - signup at https://developers.facebook.com
 - create an app
 - Go to Tools and Support menu -> Access Token tools and generate Access token
 - make sure to click debug button and extend access token, this will allow you to use the token for 3 months

You are ready to analyze facebook with R. Please note that according to Facebook´s new API policies the information you can get is very limited compared to the amount you were able to download with apps using API 1.
Download the R script and change the access token and run in R-Studio on your laptop.

### Analyze data produced by social media applications (Rlinkedin)
Before you can use Rlinkedin package to analyze linkedin data, you need to follow the steps below:
 - signup at https://developer.linkedin.com/
 - create an app
 - note down appname, client id and client secret key
 - select default application permission - check all boxes
 - on the step when you use authentication in your R script, 
 in.auth <- inOAuth(app_name, consumer_key, consumer_secret)
If you've created you're own application, be sure to copy and paste the following into 
 'OAuth 2.0 Redirect URLs' in the LinkedIn Application Details: http://localhost:1410 
 When done, press any key to continue...
 - paste http://localhost:1410  in the OAuth 2.0 Redirect URL box
 - save and come back to your R script
 Download the R script and change the access token and run in R-Studio on your laptop.
### Analyze data produced by social media applications (twitteR)

Before you can use twitteR package to analyze twitter data, you need to follow the steps below:
 - signup at https://apps.twitter.com/
 - create an app
 - generate keys and access tokens
 - note down consumer key, consumer secret, access key, access secret
 
Download the twitter wordcloud R application and replace with your keys as collected above and run.
### Analyze data produced by social media applications (SocialMediaMineR)
This is a social media search and analytic package. It takes one or more URL as an input and returns about the popularity and reach of those companies on social media outlets.
https://cran.r-project.org/web/packages/SocialMediaMineR/index.html
Download the sample R script and run in R-Studio on your laptop.
### Analyze business data using R in dashDB cloud service

### Optimize your business process using R 
Using lpsolve R package: https://cran.r-project.org/web/packages/lpSolve/index.html

#####Use Case #1 (taken from http://lpsolve.sourceforge.net/5.5/ )

Suppose a farmer has 75 acres on which to plant two crops: wheat and barley. To produce these crops, it costs the farmer (for seed, fertilizer, etc.) $120 per acre for the wheat and  $210 per acre for the barley. The farmer has $15000 available for expenses. But after the harvest, the farmer must store the crops while awaiting favorable market conditions. The farmer has storage space for 4000 bushels. Each acre yields an average of 110 bushels of wheat or 30 bushels of barley.  If the net profit per bushel of wheat (after all expenses have been subtracted) is $1.30 and for barley is $2.00, how should the farmer plant the 75 acres to maximize profit?

##### Use Case #2 (taken from http://www.r-bloggers.com/linear-programming-in-r-an-lpsolveapi-example/)
A trading company is looking for a way to maximize profit per transportation of their goods. The company has a train available with 3 wagons. When stocking the wagons they can choose between 4 types of cargo, each with its own specifications. How much of each cargo type should be loaded on which wagon in order to maximize profit?

Here is the mathematical model:
P = (110)(1.30)x + (30)(2.00)y = 143x + 60y

120x + 210y <= 15000
110x + 30y <= 4000
x + y <= 75
x >= 0, y >= 0

Download the R script that implements the lpsolve package to solve the above problem. 

### Analyze very large data sets using sparkR
 - Interactive analysis in R is usually limited as runtime is single threaded  and can only process data sets that fits into client’s memory. sparkR provides front-end to spark so R execution can use spark’s distributed model and run large scale data analysis from R console or R-studio
 
