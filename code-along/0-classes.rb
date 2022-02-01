# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

brians_favorite_food = "tacos"
bens_favorite_food = "sushi"
puts brians_favorite_food.upcase
puts bens_favorite_food.upcase


# String Class


# String Methods

#we are creating a class here
class Dog

    def speak
        puts "Woof"
    end

end

#need to create a new dog - so that the class actually has output (we give a variable name) - use class of dog
#to create new dog
jenkins = Dog.new
jenkins.speak



