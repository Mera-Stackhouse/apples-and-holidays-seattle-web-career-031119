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
  array  
  }
end