# Please copy/paste all three classes into this file to submit your solution!

class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name.downcase == name.downcase}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name.downcase == name.downcase}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, review_text="i love this place!")
    Review.new(self, restaurant, review_text)
  end

end

class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name.downcase == name.downcase}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}
  end

end

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
