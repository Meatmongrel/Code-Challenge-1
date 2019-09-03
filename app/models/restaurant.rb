class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def allReviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end
  def allStarRatings
    allReviews.map do |review|
      review.rating
    end
  end
  def allContent
    allReviews.map do |review|
      review.content
    end
  end
  def customers
    allReviews.map do |review|
      review.customer.full_name
    end.uniq
  end
  def reviews 
    allReviews
  end
  def average_star_rating
    ((allStarRatings.sum).to_f / (allReviews.length).to_f).round
  end
  def longest_review
    allContent.sort[0]
  end
end
