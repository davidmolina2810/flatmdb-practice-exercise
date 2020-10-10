require 'pry'

class Movie
  
  attr_reader :title, :year, :box_office

  @@all = [] # holds all instances of Movie

  def initialize(title, year, box_office)
    @title = title
    @year = year
    @box_office = box_office
    @@all << self # upon init, add instance of Movie to all instances arr @@all
  end

  def within_five_years
    movies = Movie.all.select {|movie| movie if movie.year.between?(self.year-5, self.year+5)}
    movies.delete(self)
    binding.pry
    return movies
  end

  def self.all
    return @@all 
  end

  def self.blockbusters
    return Movie.all.select {|movie| movie.box_office > 50000000}
  end

  def self.box_office_total_by_year(year)
    movies_in_year = Movie.all.select {|movie| movie.year == year}
    return movies_in_year.sum {|movie| movie.box_office}
  end
    
end # end of Movie class