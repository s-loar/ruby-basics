# ruby-basics

This is a collect of small programs that serve as examples of Ruby basics.

### Time
* find_day_of_year_by_number.rb - This function, #find_day_of_year_by_number, takes a year and the number of days into the year you want to find. Starting from an initial Time object of 1/1/year, the number of days (-1) is multiplied by 60 seconds, 60 minutes, 24 hours; then added to the initial time to get the day of the year.

### Regular Expressions
* custom_starts_with.rb - This is 2 functions; #custom_start_with? and #custom_ends_with?. Both take a string and substring then checks if the string starts or ends with the substring, returning a boolean.
* custom_include.rb - This function, #custom_include? takes a string and a substring. The string is looped across checking for the presence of the substring in each loop, returning a boolean.
* #scan() selects characters of a string based on the passed regexp. It returns an array or passes resluts to a block string.scan(\.\) { |element| puts element }
* #sub and #gsub - replaces characters based on passed regexp. #sub is the first occurrence, #gsub is all.
* [Rubular](http://www.rubular.com/) - to test out regular expressions.

### Classes
