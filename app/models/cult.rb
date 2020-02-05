class Cult

  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Cult.all.find { |cult| cult.name == name}
  end

  def self.find_by_founding_year(year)
    Cult.all.select { |cult| cult.founding_year == year}
  end

  def self.least_popular
    Cult.all.sort_by { |cult| cult.cult_population }[0]
  end

  def recruit_follower(follower)
    BloodOath.new("1990-03-03", follower, self)
  end

  def cult_population
    BloodOath.all.select { |bloodoath| bloodoath.cult == self}.count
  end

  def bloodoaths
    BloodOath.all.select { |bloodoath| bloodoath.cult == self}
  end

  def average_age
    bloodoaths.map { |bloodoath| bloodoath.follower.age}.sum / cult_population
  end

  def my_followers_mottos
    bloodoaths.map { |bloodoath| bloodoath.follower.life_motto}
  end

end
