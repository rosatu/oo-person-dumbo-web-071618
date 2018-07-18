class Person

#setting read-only rights to the @name (name instance?)
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

#making sure we have to give each person a name
  def initialize(name)
    #making sure name can be called out of instance method
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

  end

  def happiness=(happiness)
    @happiness = happiness
    if @happiness < 0
       @happiness = 0
    elsif @happiness > 10
          @happiness = 10
    end
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene < 0
       @hygiene = 0
    elsif @hygiene > 10
          @hygiene = 10
    end
    @hygiene
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

def take_bath
  (@hygiene + 4).hygiene
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  @happiness + 3
  @hygiene - 3
  "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.name
  friend.name
  @happiness + 3
end

end
