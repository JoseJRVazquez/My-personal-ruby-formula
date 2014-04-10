#The following is a test file where I am putting methods I have been trying
#and will likely be useful in developing the website MVP I am working on

require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

#The follow is just my Hello World Method to say hello to the user
def hello (first, last)
  "So your name is #{first_name}, #{last_name}"
end

p hello ("Jose", "Vazquez")

#This is a link method

def link_to (link, site)  #This sets up the dual arguments of the site and the link
  "Assignment 1 = <a href='#{site}'>#{link}</a>" #this forumla set up how it should output the arguments
end #this closes the method

#these are the variables defined for each one
p link_to("Google", "http://www.google.com") 
p link_to("Bloc", "http://www.bloc.io")

#Im not sure how I will use this, but the structure is similar to what I will need to 
#get the due date displayed on the item
require 'date'

def next_birthday(birthday)
  next_year = birthday.next_year
  next_year.strftime("%D")
end

next_birthday(Date.new(2013,6,1))


#lock/unlock script

def lock(a,b,c,d)
  if (a == 3 || a == 5 || a ==7) && (b == 2) && (c == 5 || c == 6) && (d == 8 || d == 9 || d == 0)
  "unlocked"
  else
  "locked"
end
end



#treu false script

def can_i_get?(item, money)
  if (item == "computer" && money >= 1000)
  true
  elsif (item == "ipad" && money >= 500)
  true
  else
  false
end
end


#Arrays

#declare the name, then the numbers, add as you go, or shovel them in
cash = [2, 4, 6, 7, 20, 1200]
#Add more to the end if you want by shoveling
cash << [15]
# reverse them if you wish 
cash.reverse
#reverese them for good if you really feel up to it
cash.reverse!
#you can add arrasy to your array if you want
cash << ["love", "disgust", 3
]
