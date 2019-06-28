def Follower
  attr_accessor :name, :life_motto, :cults
  attr_reader :age
  attr_writer

  @@all

  def initialize(name, age, life_motto)
    @name = name
    @life_motto = life_motto
    @age = age
    @cults = []
    @@all << self
  end

  def self.all
    @@all
  end

  def join_cult(cult)
    @cults << cult
    Cult.recruit_follower(self)
  end

  def self.of_a_certain_age(age_arg)
    #takes a Fixnum argument that is an age and returns an Array of followers who are the given age or older
    @@all.select do |follower_instance|
      follower_instance.age == age_arg
    end
  end
end #end Follower
