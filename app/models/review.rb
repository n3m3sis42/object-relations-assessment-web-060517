class Review
  attr_accessor :customer, :restaurant, :text
  @@all = []

  def initialize(customer, restaurant, text="this restaurant is awesome")
    @customer = customer
    @restaurant = restaurant
    @text = text
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

end
