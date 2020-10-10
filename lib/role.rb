class Role
  
  attr_accessor :actor, :movie, :earnings
  attr_reader :name

  @@all = [] # holds all instances of Role

  def initialize(actor, movie, name, earnings)
    @actor = actor
    @movie = movie
    @name = name
    @earnings = earnings
    @@all << self # on init, add self instance to all instances of Role
  end

  def self.all
    return @@all
  end

end # end of Role class