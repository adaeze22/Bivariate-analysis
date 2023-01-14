hr_data <- read.csv('HR_comma_sep.csv')
head(hr_data)
dim(hr_data)
summary(hr_data)
colSums(is.na(hr_data))

cor(hr_data[3:4])
cor(hr_data$number_project, hr_data$average_montly_hours)

scatter.smooth(hr_data$number_project, hr_data$average_montly_hours)

#linear
#lm(y~x , data=data)
linearMod <- lm(hr_data$average_montly_hours ~ hr_data$number_project) #build linear regression


print(linearMod)
