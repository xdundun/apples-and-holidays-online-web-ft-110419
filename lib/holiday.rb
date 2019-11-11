require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas][2]= "Balloons"
  holiday_hash[:winter][:new_years][1]= "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day][1] = supply
  holiday_hash[:spring][:memorial_day][2] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season] = { holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
<<<<<<< HEAD
  arr = []
  arr << holiday_hash[:winter][:christmas]
  arr << holiday_hash[:winter][:new_years]
  return arr.join
=======
  holiday_hash.each { |key,value|
   puts  key[0]

        }


#holiday_hash[:winter]
>>>>>>> 6d3c478f892adaae24bf6e7c7aa0bfbcf5f30c54
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each {|key,value|
    temp = nil
    temp = key.to_s
    temp.capitalize!
    puts temp << ":"
      value.each { |value, v|
        str = nil
        temp1 = nil
         if value == :new_years
           str = value.to_s
           temp2 = str.split('')
           temp2[0].capitalize!
           temp2[3] = " "
           temp2[4].capitalize!
           str = temp2.join
           puts "  " << str << ": " << v.join(", ")
         elsif value == :fourth_of_july
           str = value.to_s
           temp2 = str.split('')
           temp2[0].capitalize!
           temp2[6] = " "
           temp2[7].capitalize!
           temp2[9] = " "
           temp2[10].capitalize!
           str = temp2.join
           puts "  " << str << ": " << v.join(", ")
         elsif value == :memorial_day
           str = value.to_s
           temp2 = str.split('')
           temp2[0].capitalize!
           temp2[8] = " "
           temp2[9].capitalize!
           str = temp2.join
           puts "  " << str << ": " << v.join(", ")
         else
           temp1 = value.to_s
           temp1.capitalize!
           puts  "  " << temp1 << ": " << v.join(", ")
         end
        }
      }
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbqs = []
  holiday_hash.each {|key,value|
      value.each { |k,v|
        if v.include?("BBQ")
          bbqs.push(k)
        end
    }
  }
  return bbqs
end
