require 'date'
require 'yaml'

def french_ssn_info(ssn)
  pattern = /(?<gender>[1|2])\s?(?<yob>\d{2})\s?(?<mob>\d{2})\s?(?<dept>\d{2})\s?\d{3}\s?\d{3}\s?\d{2}/
  match_data = ssn.match(pattern)
  return "The number is invalid" if ssn == ""

  # decompose the string via regex DONE
  # use regex method match to pull each info out
  # gender
  case match_data[:gender]
  when "1"
    gender = "man"
  else
    gender = "woman"
  end
  # yob
  # mob
    # need to Date::MONTHNAMES
  p match_data
  month = Date::MONTHNAMES[match_data[:mob].to_i]
  # department code
  dept_hash = YAML.load_file('data/french_departments.yml')
  dept = dept_hash[match_data[:dept]]
  return "a #{gender}, born in #{month}, 19#{match_data[:yob]} in #{dept}."
end

p french_ssn_info("284083145108946")
# "a man, born in December, 1984 in Seine-Maritime."
