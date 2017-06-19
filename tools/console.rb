require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


cust1 = Customer.new("sarah", "evans")
cust2 = Customer.new("mike", "evans")
cust3 = Customer.new("dave", "rinker")
cust4 = Customer.new("devin", "renton")
cust5 = Customer.new("wes", "jansen")
cust6 = Customer.new("dave", "whitehead")
cust7 = Customer.new("alicia", "martello")
cust8 = Customer.new("dave", "green")

rest1 = Restaurant.new("applebees")
rest2 = Restaurant.new("outback")
rest3 = Restaurant.new("woodfire grill")
rest4 = Restaurant.new("canoe")

rev1 = Review.new(cust1, rest1)
rev1 = Review.new(cust2, rest1)
rev1 = Review.new(cust3, rest1)
rev1 = Review.new(cust4, rest1)
rev1 = Review.new(cust5, rest1)
rev1 = Review.new(cust1, rest2)
rev1 = Review.new(cust1, rest3, "i eat here every day and it's amaze")
rev1 = Review.new(cust1, rest4, "i got food poisoning")
rev1 = Review.new(cust8, rest1, "this restaurant sucks")
cust7.add_review(rest4)

Pry.start
