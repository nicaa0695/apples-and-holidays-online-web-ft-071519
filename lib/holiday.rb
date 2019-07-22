require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
  end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter].each do |holiday, value|
  value << supply
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |season, _holiday_hash|
  puts "#{season.to_s.capitalize}:"
  _holiday_hash.each do |holiday, supplies|
    capitalized_holiday = holiday.to_s.split('_').each {|i| i.capitalize!}.join(' ')
    puts "  #{capitalized_holiday}: #{supplies.join(', ')}"
  end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
new_array = []
holiday_hash.each do |season, _holiday_hash|
  _holiday_hash.each do |holiday_name, supply_array|
    supply_array.each do |supply|
      if supply == "BBQ"
        new_array << holiday_name
      end
    end
  end
end
new_array
end







