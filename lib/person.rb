# your code goes here

class  Person
    attr_accessor :hygiene, :happiness, :bank_account 
    attr_reader :name
    
    def initialize(name,balance =25, happy = 8, hygiene = 8)
        @name = name
        @balance = balance
        @happiness = happy
        @hygiene = hygiene
    end

    def bank_account
    return  @balance
    end

    def happiness=(happy)
      if happy > 10
        @happiness = 10
    elsif happy < 0
    @happiness = 0  
    else
    @happiness = happy
    end 
    end


    def hygiene=(hygiene)
        if hygiene >10
            @hygiene =10
        elsif hygiene <0
            @hygiene = 0
        else
        @hygiene = hygiene 
        end
    end
 
    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if@hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(amount)
    @balance += amount
    return "all about the benjamins"
    end
    
    def take_bath
        self.hygiene +=4
       return( "♪ Rub-a-dub just relaxing in the tub ♫")
    end

    def work_out
            self.happiness += 2
            self.hygiene -=3
       return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
    [friend,self].each { |person| person.happiness +=3} 
    return("Hi #{friend.name}! It's #{self.name}. How are you?")
    end

    def start_conversation(friend,topic)
    
    if topic == "politics"
     self.happiness-=(2)
     friend.happiness -=2
    return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness += (1)
        friend.happiness += (1)
        return "blah blah sun blah rain"
    else
    return "blah blah blah blah blah"
    end
    
    end



end
