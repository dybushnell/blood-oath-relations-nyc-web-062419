def Follower
  attr_accessor :name, :life_motto
  attr_reader :age
  attr_writer

  @@all

  def initialize(name, life_motto, age)
    @name = name
    @life_motto = life_motto
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end
end
