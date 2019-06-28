def Cult
  attr_accessor :name, :location, :slogan
  attr_reader :founding_year
  attr_writer

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @followers = []
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    if @followers.include? follower
      return nil
    else
      @followers << followers
      follower.join_cult(self)
    end
  end

  def cult_population
    @followers.length
  end

  def self.find_by_name(name_arg)
    @@all.find do |cult_instance|
      cult_instance.name == name_arg
    end
  end

  def self.find_by_location(location_arg)
    @@all.select do |cult_instance|
      cult_instance.location == location_arg
    end
  end

  def self.find_by_founding_year(year_arg)
    @@all.select do |cult_instance|
      cult_instance.founding_year == year_arg
    end
  end
end
