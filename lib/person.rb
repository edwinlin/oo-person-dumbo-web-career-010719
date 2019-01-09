class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def happiness= (int)
    @happiness = int
    return @happiness = 10 if @happiness >= 10
    return @happiness = 0 if @happiness <= 0
  end

  def hygiene= (int)
    @hygiene = int
    return @hygiene = 10 if @hygiene >= 10
    return @hygiene = 0 if @hygiene <= 0
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end
  
  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end
  
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
  
  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end
  
  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    return "Hi #{person.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    end
    if topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    end
    if topic != "weather" && topic != "politics"
      return "blah blah blah blah blah"
    end
  end
  
end