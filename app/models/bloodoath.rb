def BloodOath
  @@all = []

  def initialize(initiation_date)
    @initiation_date = initiation_date
    @@all << self
  end

  def self.all
    @@all
  end
end
