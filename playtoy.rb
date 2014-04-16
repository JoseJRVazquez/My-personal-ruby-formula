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
s]


#OMG, you can actually find out what methods you can apply to a class or instance by typing in the name of the object
#then you can attach to it .methods  - Ok lets hope I remeber this stuff
cash.methods

#OH BTW, Note: Class names always start with a capital letter and use camel-case.

#add .count to it and find out how many there actually are numerically

cash.methods.count #sweet

#Not surw what this is, but I want to find out
"mystring".methods.count

#Another interesting one


class Book
  def title_pages_author(title, pages, author)
    @title, @pages, @author = title, pages, author
  end
  
  def title
    @title
  end
  
  def pages
    @pages
  end
  
  def author
    @author
  end
end

#uber cool, setting an instance that does not require that you preset the value when Initialized

class President
  attr_accessor :age

  def initialize(years)
    @age = years
  end
end

pres = President.new(49)
p pres.age

#=> 49


#Im gonna try this twofer so bear with me


class Signup
  attr_accessor :name, :uname, :membership

  def initialize(name, uname, membership)
    @name, @uname, @membership = name, uname, membership
  end
end

client = Signup.new("John", "JohnDoe", "free")
client = Signup.new("Jose", "JoseJRVazquez", "paid")
p "Welcome #{client.name}, your user name  is #{client.name} and your membership is #{client.membership}"

#=> "it works as it is now

#This allows you to set a class method, which is set to self automatically 
class UnitedStatesPresident
  attr_accessor :age, :party

  def initialize(years, party)
    @age, @party = years, party
  end

  def self.citizenship
    "United States of America"
  end
end

p UnitedStatesPresident.citizenship
#=> "United States of America"

#It works, so how to use this in a signup

#Tried this with a Class Metho
class Signup
  attr_accessor :name, :uname

  def initialize(name, uname)
    @name, @uname = name, uname
  end

  def self.user
    "Free Account"
  end
end

client = Signup.new("John", "JohnDoe")

p "Hello #{client.name}, you have a #{Signup.user}, your handle is #{client.uname}"


#I am starting to wonder is Objective C has the same sort of methods in its code makeup?

#Heres a few lines I played with for HASHES

def get_paper(word)
paper = {:stock => "a common stock paper 10# weight", :extra => "super bold"}
p paper[word]
end
get_paper(:stock)
# => "a common stock paper 10# weight" 
get_paper(:extra)
# => "super bold" 


class User
  attr_accessor :name, :email, :bio, :age, :sex #set get
  
  def initialize(config = {}) #initializer method
    @name = config[:name] || "n/a" # name attribute
    @email = config[:email] || "n/a" # email attribute
    @bio = config[:bio] || "n/a" # bio attribute
    @age = config[:age] || "n/a" # age attribute
    @sex = config[:sex] || "n/a" # sex attribute
  end
end
  
  def hash_to_array(h = {}) #defined method, argument and h=Hash Object
  a = [] #stating return variable
  h.each do |key, value|
    p "name is #{:name}", "age is #{:age}", "sex is #{sex}"
  end #close each loop
  h #returning the array
end #closes method


