#credit Dave Tang http://davetang.org/muse/2013/04/06/using-the-r_twitter-package/
#install the necessary packages
#install.packages("twitteR")
#install.packages("wordcloud")
#install.packages("tm")

library("twitteR")
library("wordcloud")
library("tm")

#get your consumerKey and consumerSecret from https://apps.twitter.com/
consumer_key <- 'consumer_key'
consumer_secret <- 'consumer_secret'
access_token <- '25649945-access_token'
access_secret <- 'access_secret'
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

#search tweets for hashtag
tweets <- searchTwitter("#svcc", n=1500)

length(tweets)
tweets_message <- sapply(tweets, function(x) x$getText())
#create corpus
tweets_message_corpus <- Corpus(VectorSource(tweets_message))

tweets_message_corpus <- tm_map(tweets_message_corpus,
      content_transformer(function(x) iconv(x, to='UTF-8-MAC', sub='byte')), mc.cores=1)

tweets_message_corpus <- tm_map(tweets_message_corpus, content_transformer(tolower), mc.cores=1)
tweets_message_corpus <- tm_map(tweets_message_corpus, removePunctuation, mc.cores=1)
tweets_message_corpus <- tm_map(tweets_message_corpus, function(x)removeWords(x,stopwords()), mc.cores=1)
#build the wordcloud
wordcloud(tweets_message_corpus)
