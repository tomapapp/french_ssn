require 'date'
require 'yaml'

def french_ssn_info(ssn)
  pattern = /(?<gender>[1|2])\s?(?<yob>\d{2})\s?(?<mob>\d{2})\s?(?<dept>\d{2})\s?\d{3}\s?\d{3}\s?\d{2}/

  return "The number is invalid" if ssn == ""

  # decompose the string via regex DONE
  # use regex method match to pull each info out
  # gender
  # yob
  # mob
    # need to Date::MONTHNAMES
  # department code
    # p YAML.load_file('data/french_departments.yml')




end

french_ssn_info("1 84 12 76 451 089 46")
# "a man, born in December, 1984 in Seine-Maritime."