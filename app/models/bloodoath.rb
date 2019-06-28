def BloodOath
  attr_reader :cult, :follower, :initiation_date
  @@all = []

  def initialize(cult, follower, initiation_date = Date.today)
    @cults = cult
    @follower = follower
    @initiation_date = initiation_date
    @@all << self
    cult.recruit_follower(follower)
    follower.join_cult(cult)
  end

  def self.all
    @@all
  end
end
