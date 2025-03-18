#airbnb analysis

install.packages(c("ggplot2", "dplyr", "tidyr", "lattice","corrplot"))
library(ggplot2)
library(dplyr)
library(tidyr)
library(lattice)
library(corrplot)

airbnb=read.csv("C:/Users/Administrator/OneDrive/Desktop/kaggle/train.csv")
head(airbnb)
View(airbnb)

airbnb=rename(airbnb,
       region="neighbourhood_group",
       area="neighbourhood",
       minNights="minimum_nights",
       reviewCount="number_of_reviews",
       latestReview="last_review",
       totalHostListings="calculated_host_listings_count")

str(airbnb)
summary(airbnb)

colSums(is.na(airbnb))
#reviews_per_month has NA values

#considering review to be 0 where there are no reviews
airbnb$reviews_per_month[is.na(airbnb$reviews_per_month)] = 0
#for review dates with no review
airbnb$latestReview[airbnb$latestReview==""]="No Review"

#summary of price
summary(airbnb$price)

#summary of total reviews 
summary(airbnb$reviewCount)

#summary of minimum nights
summary(airbnb$minNights)


#price distribution
ggplot(airbnb,aes(price)) + geom_histogram(binwidth = 50, fill="pink",colour = "purple") +
  labs(title = "Distribution of Price", x= "Price per Night",y="Number of Listings") + xlim(0,500)+
  theme_classic()

#room type analysis
ggplot(airbnb,aes(room_type,fill = room_type)) + geom_bar() + 
  labs(title = "Room Type Count" , x="Room Type",y="Count", fill="Room Type") + theme_minimal()

#top 10 expensive neighbourhoods
airbnb %>% group_by(area) %>% summarise(avgPrice= mean(price, na.rm=TRUE)) %>% 
  arrange(desc(avgPrice)) %>% head(10)

#do reviews affect price?
corrMatrix = cor(airbnb %>% select(price,reviewCount,reviews_per_month,minNights),
                   use = "complete.obs")
corrMatrix
corrplot(corrMatrix)
# shows little to no correlation

#does more host listings affect price?
ggplot(airbnb,aes(totalHostListings,price))  + geom_point(alpha= 0.5, color= "red") +
  xlim(0,350) + labs(title= "Price vs Total Host Listings" , x= "Total Host Listings")

#availabilty vs price
ggplot(airbnb, aes(price, availability_365)) + labs(title = "Availabilty vs Price") +
  geom_point(alpha =0.3,color = "blue")
