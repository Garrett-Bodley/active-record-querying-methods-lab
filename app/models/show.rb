class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.find_by_rating(self.maximum(:rating))
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.find_by_rating(self.minimum(:rating))
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.all.order("name")
  end

end

# .highest_rating
#   returns the rating of the TV show with the highest rating (FAILED - 1)
# .most_popular_show
#   returns the name of the TV show with the highest rating (FAILED - 2)
# .lowest_rating
#   returns the rating of the TV show with the lowest rating (FAILED - 3)
# .least_popular_show
#   returns the name of the TV show with the lowest rating (FAILED - 4)
# .ratings_sum
#   returns the sum of all the ratings of all the tv shows (FAILED - 5)
# .popular_shows
#   returns an array of all of the shows with a rating above 5 (FAILED - 6)
# .shows_by_alphabetical_order
#   returns an array of all of the shows, listed in alphabetical order (FAILED - 7)