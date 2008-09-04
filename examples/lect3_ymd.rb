years = 29   # age in years ...
months = 11  # ... and months

# compute my age in days and hours
days = years * 365 + months * 30  # 365 days in a year, 30 days in a month
hours = days * 24                 # 24 hours per day

# print out my age in years, days, and hours
puts "Age: #{years} years or #{days} days or #{hours} hours"

# compute my "mental" age in years, days, and hours
years = years - 10
days = years * 365 + months * 30
hours = days * 24

# print out my "mental" age
puts "Mental Age: #{years} years or #{days} days or #{hours} hours"