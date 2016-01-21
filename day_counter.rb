#Script to calculate: Days of Person at a Party, 
require 'date'

#Counts Days Between Date, includes first day
def daycounter(start_date, end_date)
	day = end_date.mjd - start_date.mjd + 1
	puts "You were #{day} days old on #{end_date}!"
end

#Counts Days Between Start Day and Party Date, includes first day
def oct15days(start_date, party_date)
	puts party_date.mjd - start_date.mjd + 1
end

#Counts YOUR 10,000th Day, includes first day
def tenkhist(start_date)
	d = start_date
	d += 9999
	puts d
end

#Calculates YOUR Nth Day, includes first day
def nkthousand(start_date, wishcount)
	d = start_date
	d += wishcount - 1
	puts "You were/will be #{wishcount} days old on:"
	puts d
end

#birthday input
puts "What is your birth date? (as 'DD-MM-YYYY')"
birth_d = $stdin.gets.chomp
start_date = Date.parse(birth_d)
party_date = Date.parse("15-10-2016")

#Party Day Count
puts "You will be this many days old on my party!:"
oct15days(start_date, party_date)

#YOUR 10k
puts "\nDo you want to know when you were 10,000 days old?  YOUR 10kDay was:"
puts tenkhist(start_date)

#NKFunction:
puts "Do you want to know when you're N days old?\nWhat number days do you want to know?"
wish_num = $stdin.gets.chomp.to_i
puts nkthousand(start_date, wish_num)

#Day Counter
puts "Do you want to find out how many days old you were on a specific date?(as 'DD-MM-YYYY')"
end_d = $stdin.gets.chomp
end_date = Date.parse(end_d)
daycounter(start_date, end_date)
