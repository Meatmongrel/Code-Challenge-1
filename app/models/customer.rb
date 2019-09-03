class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end
  def allReviews
    Review.all.select do |review|
      review.customer == self
    end
  end
  def full_name
    "#{first_name} #{last_name}"
  end
  def self.find_by_name(name)
    self.all.find do |person|
      person.full_name == name
    end
  end
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end
  def num_review
    allReviews.count
  end
  def restaurants
    allReviews.map do |review|
      review.restaurant.name
    end.uniq
  end
    
end