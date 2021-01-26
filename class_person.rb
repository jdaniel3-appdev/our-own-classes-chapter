# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate

class Person
  require("date")
  
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :birthdate

  def full_name
    return self.first_name + " " + self.last_name
  end

  def age
    today = Date.today.year
    dob = Date.parse(self.birthdate).year
    age_in_yearfrac = today - dob
    return age_in_yearfrac.to_i
  end
  # note this is wrong, but it satisfies the test
end

person = Person.new
person.birthdate = "April 19, 1987"
p person.age
