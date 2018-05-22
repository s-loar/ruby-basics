def find_day_of_year_by_number(year, number)
  first_day = Time.new(year,1,1)
  first_day += (60 * 60 * 24 * (number-1))
  "For #{year}, the #{number} day is #{first_day}"
end

p find_day_of_year_by_number(2016, 234)
p find_day_of_year_by_number(2018, 127)
p find_day_of_year_by_number(2016, 127)
p find_day_of_year_by_number(2016,366)
p find_day_of_year_by_number(2018,365)
p find_day_of_year_by_number(2018,1)
p find_day_of_year_by_number(2018,60)
