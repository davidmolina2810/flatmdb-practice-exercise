class Actor
  
  attr_reader :name
  attr_accessor :age, :rank

  @@all = [] # holds all instances of Actor
  @@ranks = ["A", "B", "C", "D", "E"]

  def initialize(name, rank, age)
    @name = name
    @rank = rank
    @age = age
    @@all << self # on initialize, add self instance to all instances of Actor arr
  end

  #def lie_about_age(new_age)
    #index = @@ranks.find_index {|rank| rank == self.rank}
    #if (new_age > self.age) && (index != Actor.ranks.length-1)
     # change_age_with(new_age)
      #down_rank
    #elsif (new_age < self.age) && (index != 0)
     # change_age_with(new_age)
      #up_rank
    #elsif (new_age > self.age) && (index )
    #end
    #binding.pry
  #end

  def self.ranks
    @@ranks
  end

  def self.all
    return @@all
  end

  def self.average_age
    ages = Actor.all.map {|actor| actor.age}
    return ages.inject {|sum, n| sum + n} / ages.size
  end

  def self.a_list
    return Actor.all.select {|actor| actor.rank == "A"}
  end

  private
  def change_age_with(new_age)
    self.age = new_age
  end

  def up_rank
    index = @@ranks.find_index {|rank| rank == self.rank}
    self.rank = Actor.ranks[index-1]
  end

  def down_rank
    index = @@ranks.find_index {|rank| rank == self.rank}
    self.rank = Actor.ranks[index+1]
  end
  
end # end of Actor class