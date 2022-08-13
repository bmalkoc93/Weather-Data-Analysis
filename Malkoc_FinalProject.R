#weather data from past 10 years
filename <- "~/Desktop/UO/Winter 2019/Environmental Modeling/Final Project/1662279.csv"
weatherdata <- read.csv(filename, header = TRUE)
plot (weatherdata$DailySnowDepth,
      main = "Daily Snow Depth in Eugene, OR: 3/15/09 - 3/15/19",
      xlab = "Date",
      ylab = "Daily Snow Depth")

#weather data from past month
filename <- "~/Desktop/UO/Winter 2019/Environmental Modeling/Final Project/cmd1662297.csv"
weatherdata <- read.csv(filename, header = TRUE)
plot (weatherdata$DATE, weatherdata$DailySnowDepth)

library(ggplot2)
head(weatherdata)
ggplot(data=weatherdata, aes(x=DATE, DailySnowDepth)) + 
  geom_point(
    color="blue",
    shape=21,
    alpha=0.5,
    size=1,
    stroke = 2)

#twitter data 
library(rtweet)
create_token(
  app = "LA510_Bianca",
  consumer_key = "I0Gu2kl6RKAgbVIEwub4l2nvS",
  consumer_secret = "lmzDdBG4jxLYiMIJwDR3TAaU5BsJShVrFsSYWBJdh4wCVbP33z",
  access_token = "814560962275479552-9KoksoimHZoZzMxpg6Km6h5wDIQfvfx",
  access_secret = "JJe2GX4xdT8G9M3ulOSLubdRJ0ufhVleA4Wmomgzrc987")

rt <- search_tweets("snow AND eugene", n = 18000, include_rts = FALSE)

eugene <- get_timeline("iembot_pqr", n = 3200)
ts_plot(eugene, "days")
