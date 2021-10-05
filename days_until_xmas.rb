# Write a method which returns the number of days until next Xmas.
require 'date'

def days_until_xmas(day, month, year)
  today = Date.new(year, month, day)
  xmas = Date.new(year, 12, 25)
  dif = xmas - today
  if dif < 0
    year+=1
    xmas = Date.new(year, 12, 25)
    dif = xmas - today
  end
  return dif.to_i
end

puts days_until_xmas(5,10,2021).class == Integer
puts days_until_xmas(6,10,2021) == 80
puts days_until_xmas(26,12,2021) == 364
