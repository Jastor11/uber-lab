# Woah! Uber was just hacked and their code based deleted by a group attempting to replace them and take over the ride-sharing market.

# Without hesitation they call Upperline School of Code and need some methods re-written that can calculate how much certain rides should cost.

# Challenge #1 - Write a method for uberX that takes in 3 arguments: distance (in miles), time (in minutes), and surge pricing. Set the default for surge pricing to 1. Make sure it lets the user know exactly how much their fare is going to cost in a sentence that interpolates variables into a ruby string.

# Take into consideration - http://uberestimator.com/cities/new-york

# Base fare
# Cost per minute
# Cost per mile
# Minimum charge for an Uber ride

def uberX(minutes, miles, surge = 1.00)
	#defining uber fares
	base_fare = 2.55
	cost_per_minute = 0.35
	cost_per_mile = 1.75
	minimum_fare = 8.00
	
	#calculates cost of time and cost of distance
	mileage_fare = miles * cost_per_mile
	time_fare = minutes * cost_per_minute
	
	#adds base fare to cost of time and cost of distance
	total_cost = base_fare + mileage_fare + time_fare
	surge_total_cost = total_cost * surge
	
	if surge_total_cost > minimum_fare
		surge_total_cost = minimum_fare
	end
	
	puts "Your uber ride went #{miles} miles and took #{minutes} minutes. Your total cost comes out to $#{surge_total_cost} with surge pricing of #{surge}."
end

uberX(10, 7)
uberX(10, 7, 3)
uberX(2, 1) # came out to $5



# Challenge #2 - Write another method that takes in an additional argument to specify if the ride is uberX, uberPool, uberXL, or uberBlack. Use a switch statement to change the fares depending on the string entered in for this value.


















# ############################
# #     POTENTIAL ANSWER     #
# ############################

# def uberX_ride(minutes, miles, surge_pricing = 1.00)
# 	# start by defining the fares for milage and time
# 	minutes_fare = minutes * 0.35 #make sure students know this is a float data type
# 	miles_fare = miles * 1.70 
# 	# define base fare and minimum fare for comparison and addition
# 	base_fare = 2.55
# 	minimum_fare = 8.00
	
# 	# add up total fare and multiply by surge_pricing
# 	total_fare = base_fare + miles_fare + minutes_fare
# 	total_fare = total_fare * surge_pricing
	
# 	# account for minimum fare
# 	if total_fare < minimum_fare
# 		total_fare = minimum_fare
# 	end
	
# 	# let user know about ride and fare
# 	puts "Thank you for riding with Uber! You've ridden with us for #{minutes} minutes and traveled #{miles} miles. Your total fare comes out to #{total_fare}. Please ride with us again soon!"
	
# end

# uberX_ride(2, 1, 5)
# uberX_ride(5, 2)
# uberX_ride(15, 12)
# uberX_ride(25, 11, 1.75)
# uberX_ride(25, 11)

