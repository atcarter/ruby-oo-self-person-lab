# your code goes here
require "pry"
class Person

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25

    end

    def name 
        @name
    end

    def bank_account
        @bank_account
    end

    def bank_account= (num)
        @bank_account = num
    end

    def happiness
        @happiness
    end

    def happiness= (num)
        if num < 0
            @happiness = 0
        elsif num > 10
            @happiness = 10
        else
            @happiness = num
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene= (num)
        if num < 0
            @hygiene = 0
        elsif num > 10
            @hygiene = 10
        else
            @hygiene = num
        end
    end

    def clean?
        if @hygiene > 7
            return true
        end
        false
    end

    def happy?
        if @happiness > 7
            return true
        end
        false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        #binding.pry
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It\'s #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2 
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end

    end



end

