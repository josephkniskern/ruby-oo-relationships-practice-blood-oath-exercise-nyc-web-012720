require_relative '../config/environment.rb'
require 'faker'

def reload
  load 'config/environment.rb'
end

# 15.times do
#   name = Faker::Books::Lovecraft.deity
#   location = Faker::Books::Lovecraft.location
#   founding_year = Faker::Date.backward(days: 1000000000)
#   slogan = Faker::Books::Lovecraft.fhtagn
#   Cult.new(name:name, location: location, founding_year: founding_year, slogan: slogan)
# end

cult1 = Cult.new("Big Cult Bois", "Virginia", 1987, "You can't win a trophy without having a team!")
cult2 = Cult.new("Cthulhu", "Severn Valley", 476, "Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn.")
cult3 = Cult.new("Cats", "Just North of Boston", 1773, "Why tho?")

follower1 = Follower.new("Caroline", 39, "Don't sink like a boat.")
follower2 = Follower.new("Bartholmew", 81, "Field day was the best day.")
follower3 = Follower.new("Xedrih", 393, "The theme song from cheers.")

blood_oath1 = BloodOath.new("1999-01-01", follower3, cult2)
blood_oath2 = BloodOath.new("1504-06-23", follower1, cult3)
blood_oath3 = BloodOath.new("1891-12-25", follower2, cult1)
blood_oath4 = BloodOath.new("1223-09-21", follower1, cult2)
blood_oath5 = BloodOath.new("1913-11-11", follower3, cult3)
blood_oath6 = BloodOath.new("1111-02-14", follower2, cult2)
blood_oath7 = BloodOath.new("1756-05-14", follower3, cult1)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
