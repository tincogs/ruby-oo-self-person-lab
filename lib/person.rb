class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_happiness)
        if new_happiness < 0
            @happiness = 0
        elsif new_happiness > 10
            @happiness = 10
        else
            @happiness = new_happiness
        end
    end

    def hygiene=(new_hygiene)
        if new_hygiene < 0
            @hygiene = 0
        elsif new_hygiene > 10
            @hygiene = 10
        else
            @hygiene = new_hygiene
        end
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person_class=Person.new("friend"))
        self.happiness += 3
        person_class.happiness += 3
        return "Hi #{person_class.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end