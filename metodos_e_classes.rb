#class Bird
    #def talk (name)
        #puts "#{name} says Chir! Chirp!"
    #end
    #def move (name, destination)
        #puts "#{name} flies to the #{destination}"
    #end
#end

class Dog
    attr_accessor :name, :age
    
    def name= (value)
        if value == ""
            raise "Name can't be blank!"
        end
        @name = value
    end

    def age= (value)
        if value < 0
            raise "An age of #{value} isn't valid!"
        end
        @age = value
    end

    def move (destination)
        puts "#{@name} runs to the #{destination}"
    end

    def talk
        puts "#{@name} says Bark!"
    end

    def report_age
        puts "#{@name} is #{@age} years old."
    end
end

#class Cat
    #def talk (name)
        #puts "#{name} says Meow!"
    #end
    #def move (name, destination)
        #puts "#{name} runs to the #{destination}"
    #end
#end

bob = Dog.new
bob.name = "Bob"
bob.age = 2
spoock = Dog.new
spoock.name = "Spoock"
spoock.age = 3
bob.report_age
spoock.report_age
bob.talk
spoock.move ("house")