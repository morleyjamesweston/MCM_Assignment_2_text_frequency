library(tidyverse)

student_name <- "Archduke Ferdinand"
print(student_name)

# In this assignment, you'll be loading 3 data sets, and making 3 charts:
# One for COVID cases, one for Trump tweets, and one for dating survey results.

# ██████╗ ██████╗ ██╗   ██╗██╗██████╗ 
# ██╔════╝██╔═══██╗██║   ██║██║██╔══██╗
# ██║     ██║   ██║██║   ██║██║██║  ██║
# ██║     ██║   ██║╚██╗ ██╔╝██║██║  ██║
# ╚██████╗╚██████╔╝ ╚████╔╝ ██║██████╔╝
# ╚═════╝ ╚═════╝   ╚═══╝  ╚═╝╚═════╝ 


# Toyr first task will use a dataset of COVID 19 data, originally compiled here:
# https://github.com/owid/covid-19-data/tree/master/public/data

# You can find it in input_data/ok_cupid.csv



# 1. Load the dataset as a dataframe, using "Import Dataset"
covid_df <- read_csv(...

                     

# 2. user filter() to select 3 countries to compare.
# You'll need to figure out which column contains the country data.



# 3. user ggplot() + geom_line() to make a line chart of covid cases over time.
# X should be the data,
# Y should be the number of new cases
# Each country should be a different color.





# ████████╗██╗    ██╗███████╗███████╗████████╗███████╗
# ╚══██╔══╝██║    ██║██╔════╝██╔════╝╚══██╔══╝██╔════╝
#    ██║   ██║ █╗ ██║█████╗  █████╗     ██║   ███████╗
#    ██║   ██║███╗██║██╔══╝  ██╔══╝     ██║   ╚════██║
#    ██║   ╚███╔███╔╝███████╗███████╗   ██║   ███████║
#    ╚═╝    ╚══╝╚══╝ ╚══════╝╚══════╝   ╚═╝   ╚══════╝
                                                    
# Second, we'll look at all the tweets from former US president Donald Trump.
# You can find it in input_data/trump_tweets.csv



# 1. Load the dataset from the CSV
trump_tweets <- ...


# 2. use mutate() and to_lower() to convert the text column to lowercase.


# 3. using str_detect() and mutate(), make a new column called "loser" that detects if the word
# loser in the tweet. If you need help, check the help files with help(str_detect)


# 4. using year() and mutate(), make a new column called "year" that converts the date into just
# the year. 



# 5. Using count(), count the "year" and "loser" columns.



# Using ggplot(), make a chart of the number of times that Trump tweeted the word "loser".
# x should be the year
# y should be the number of tweets.



# ██████╗  █████╗ ████████╗██╗███╗   ██╗ ██████╗ 
# ██╔══██╗██╔══██╗╚══██╔══╝██║████╗  ██║██╔════╝ 
# ██║  ██║███████║   ██║   ██║██╔██╗ ██║██║  ███╗
# ██║  ██║██╔══██║   ██║   ██║██║╚██╗██║██║   ██║
# ██████╔╝██║  ██║   ██║   ██║██║ ╚████║╚██████╔╝
# ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ 


# Our final data set comes from the dating website OKCupid,
# Which used to ask tons of questions to users and release them as a public 
# data set.

# It can be found in input_data/ok_cupid.csv




# 1. Load the dataset as a dataframe, using "Import Dataset"

ok_cupid <- ....

# It should look something like this:

#   d_age d_gender q36355 q45632 q49093                              q45835 q12584
# <dbl> <chr>    <chr>  <chr>  <chr>                               <chr>  <chr> 
#   1    24 Woman    Yes.   No.    Utterly wrong.                      Cloudy Yes   
# 2    20 Woman    No.    No.    Utterly wrong.                      Cloudy No    
# 3    31 Woman    No.    No.    Utterly wrong.                      Sun    Yes   
# 4    26 Woman    No.    No.    Utterly wrong.                      Sun    No    
# 5    40 Man      No.    No.    Utterly wrong.                      Rain   Yes   
# 6    28 Man      No.    No.    Not a subject I have an opinion on. Snow   Yes   
# 7    18 Woman    Yes.   No.    Utterly wrong.                      Cloudy No    
# 8    36 Woman    Yes.   No.    Utterly wrong.                      Snow   Yes   
# 9    18 Man      Yes.   No.    Not a subject I have an opinion on. Rain   Yes   
# 10    34 Man      No.    No.    Utterly wrong.                      Rain   Yes   






# 2 I've selected 5 safe-for-work questions for you to examine.

# q36355	Would you consider dating someone who has extensive facial tattoos?
# q45632	Are you a fan of professional wrestling?
# q49093	Wearing socks with sandals is:
# q45835	Which is your favorite weather?
# q12584	Do you enjoy exercise?

# Use GGplot to make 3 charts of your choice based on this data.
# This is more open-ended, you can choose whatever kind of geometry and data you like.
# Be sure to add proper labels!

# For example, if you just wanted too  plot the age and gender, you could do:
ok_cupid |> 
  count(d_age, d_gender) |> 
  ggplot(aes(x=d_age, y=n, fill=d_gender)) +
  geom_col() +
  labs(
    title="Age and gender of survey participants",
     x="Age (years)",
     y="Count"
    )
# (You can't use this one)

# If you want to do something fancy, look here for inspiration and code samples:
# https://r-graph-gallery.com/


