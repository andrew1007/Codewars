# Your task in order to complete this Kata is to write a function which formats a duration, given as a number of seconds, in a human-friendly way.
#
# The function must accept a non-negative integer. If it is zero, it just returns "now". Otherwise, the duration is expressed as a combination of years, days, hours, minutes and seconds.
#
# It is much easier to understand with an example:
#
#   format_duration(62)    # returns "1 minute and 2 seconds"
#   format_duration(3662)  # returns "1 hour, 1 minute and 2 seconds"
#
# Note that spaces are important.
# Detailed rules
#
# The resulting expression is made of components like 4 seconds, 1 year, etc. In general, a positive integer and one of the valid units of time, separated by a space. The unit of time is used in plural if the integer is greater than 1.
#
# The components are separated by a comma and a space (", "). Except the last component, which is separated by " and ", just like it would be written in English.
#
# A more significant units of time will occur before than a least significant one. Therefore, 1 second and 1 year is not correct, but 1 year and 1 second is.
#
# Different components have different unit of times. So there is not repeated units like in 5 seconds and 1 second.
#
# A component will not appear at all if its value happens to be zero. Hence, 1 minute and 0 seconds is not valid, but it should be just 1 minute.
#
# A unit of time must be used "as much as possible". It means that the function should not return 61 seconds, but 1 minute and 1 second instead. Formally, the duration specified by of a component must not be greater than any valid more significant unit of time.
#
# For the purpose of this Kata, a year is 365 days and a day is 24 hours.

def years(sec)
  sec / 31536000
end

def days(sec)
  (sec / 86400) - (years(sec) * 365)
end

def hours(sec)
  (sec / 3600) - (years(sec) * 365 * 24 + days(sec) * 24)
end

def minutes(sec)
  (sec / 60) - (years(sec) * 365 * 24 * 60 + days(sec) * 24 * 60+ hours(sec) * 60)
end

def new_seconds(sec)
  sec % 60
end

def format_duration(seconds)
return "now" if seconds == 0
  yr = years(seconds)
  case yr
  when 0 then yr_text = nil
  when 1 then yr_text = "#{yr} year"
  else
  	yr_text = "#{yr} years"
  end
  dy = days(seconds)
  case dy
  when 0 then day_text = nil
  when 1 then day_text = "#{dy} day"
  else
  	day_text = "#{dy} days"
  end

  hr = hours(seconds)
  case hr
  when 0 then hr_text = nil
  when 1 then hr_text = "#{hr} hour"
  else
  	hr_text = "#{hr} hours"
  end

  min = minutes(seconds)
  case min
  when 0 then min_text = nil
  when 1 then min_text = "#{min} minute"
  else
  	min_text = "#{min} minutes"
  end

  sec = new_seconds(seconds)
  case sec
  when 0 then sec_text = nil
  when 1 then sec_text = "#{sec} second"
  else
   sec_text = "#{sec} seconds"
  end

  arr = [yr_text, day_text, hr_text, min_text, sec_text].compact

  return arr.join("") if arr.length == 1

  text_arr = []
  arr[0...-1].each do |word|
    text_arr << (word + ", ")
  end

  text_arr << "and " + arr.last

  return text_arr.join("").reverse.sub(",","").reverse
end
