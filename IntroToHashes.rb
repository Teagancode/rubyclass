




=begin

Let's suppose you are making a menu for a restaurant. Each menu has different sections that have names, but within that section it doesn't matter much what the order of the items are. You are going to use Hashes and Arrays to setup this restaurant

there are two ways to start a Hash, the first is called Hash Literal

diner_menu = {
  breakfast: ["Green eggs and ham", "toast butter side down"],
  drinks : ["water","coffee","orange juice"]
}

the second way
diner_menu=Hash.new
diner_menu["breakfast"]=["Green eggs and ham", "toast butter side down"]
diner_menu["drinks"]= ["water","coffee","orange juice"]

now make your own menu below, please use the diner_menu variable name and have at least three categories.

=end



diner_menu=Hash.new
diner_menu["breakfast"]=["Buttered Bagel with milk", "Toast with eggs and milk","Toaster waffles"]
diner_menu["lunch"]=["Chicken with rice","Nan with rice", "Turkey sandwhich with cheese", "Pizza with fruit"]
diner_menu["dinner"]=["tacos","lasagna", "Pasta", "potatoes with butter and bread"]
diner_menu["drinks"]=["Water", "milk","Orange Juice", "lemonade"]
end

#run all your code and describe what this loop does.
diner_menu.each do |category,items|
  puts "For  #{category} we have :"
    if items.respond_to?(:each)
      items.each {|item| puts item}
      end
    end
  end

  =begin
  This bottom code is a syntax error. There is an unexpected end
  =end
