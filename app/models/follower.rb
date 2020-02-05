class Follower

  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    Follower.all.select { |follower| follower.age >= age}
  end

  def self.most_active
    Follower.all.sort_by { |follower| follower.cults.count}[-1]
  end

  def cults
    BloodOath.all.select { |bloodoath| bloodoath.follower == self}
  end

  def join_cult(cult)
    BloodOath.new("1989-03-30", self, cult)
  end

  def bloodoaths
    BloodOath.all.select { |bloodoath| bloodoath.follower == self}
  end


  def my_cults_slogans
    bloodoaths.map { |bloodoath| bloodoath.cult.slogan}
  end

end
