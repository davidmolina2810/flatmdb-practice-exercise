require 'pry'
require_relative 'lib/actor'
require_relative 'lib/movie'
require_relative 'lib/role'

a1 = Actor.new("Ali Stone", "C", 21)
a2 = Actor.new("Alpa Chino", "A", 83)
a3 = Actor.new("Javier Bardem", "A", 60)
a4 = Actor.new("Issa Rae", "A", 33)
a5 = Actor.new("Timmy Wiseau", "D", 13)
a6 = Actor.new("Ian H", "E", 33)

m1 = Movie.new("An Affair to Forget", 2017, 70_000_000)
m2 = Movie.new("The Room 2", 2014, 7)
m3 = Movie.new("Flatiron Man", 2014, 170_000_000)
m4 = Movie.new("My Big Fat Geek Wedding", 1999, 20_000_000)

r1 = Role.new(a1, m1, "Svetlana", 0.15)
r2 = Role.new(a2, m1, "Georgie", 0.05)
r3 = Role.new(a3, m2, "Lisa", 0.07)
r4 = Role.new(a5, m2, "Tommy Jr.", 0.77)
r5 = Role.new(a1, m3, "Flatiron Man", 0.22)
r6 = Role.new(a4, m3, "Thor", 0.22)
r7 = Role.new(a3, m3, "Captain America", 0.12)
r8 = Role.new(a1, m4, "Ali", 0.22)
r9 = Role.new(a6, m4, "Ian", 0.22)
r10 = Role.new(a5, m4, "Timmy", 0.02)

binding.pry
0