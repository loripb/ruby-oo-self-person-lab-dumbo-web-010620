# your code goes here
class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name, bank_account = 25)
        @name = name
        @bank_account = bank_account
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0,10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0,10)
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        p "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene+=4)
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness+=2)
        self.hygiene=(@hygiene-=3)
        p "♪ another one bites the dust ♫"
    end

    def call_friend(person2)
        person2.happiness += 3
        self.happiness=(@happiness+=3)
        p "Hi #{person2.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(@happiness-=2)
            person.happiness -= 2
            "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            self.happiness=(@happiness+=1)
            person.happiness += 1
            "blah blah sun blah rain"

        else topic == "other"
            "blah blah blah blah blah"
        end
    end
end
