def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each {|key, value|
    value.each {|key, value|
      if value.include?("BBQ")
        array << key
      end
    }
  }
  array
end

holiday_hash = 
{
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
   
def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each {|season, holiday|
    puts "#{season.capitalize}:"
    holiday.each {|holiday, supplies|
      string = supplies.join(", ")
      puts "\t#{holiday.capitalize}: #{string}"
    }
  }
end

 all_supplies_in_holidays(holiday_hash)