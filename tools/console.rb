require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
andrew = Customer.new("Andrew", "Thiessen")
kyle = Customer.new("Kyle", "Coberly")
jack = Customer.new("Jack", "Rys")

oliveGarden = Restaurant.new("The Olive Garden")
spaghetti = Restaurant.new("The Old Spaghetti Factory")
redGinger = Restaurant.new("Red Ginger")

review1 = jack.add_review(spaghetti, "I loved it", 5)
review2 = jack.add_review(spaghetti, "It was better last time, but still good.", 4)
review3 = andrew.add_review(redGinger, "Best hibachi ever!", 5)
review4 = andrew.add_review(spaghetti, "I always come here for my birthday, I love this place", 5)
review5 = kyle.add_review(oliveGarden, "Breadsticks were cold, will not return", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line