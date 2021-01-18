require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
moshood = Manager.new("Moshood", 57, "Customer Relations")
umber = Manager.new("Umber", 45, "Finance")
sasha = Manager.new("Sasha", 35, "HR")
sasha.hire_employee("Wells", 60000)
sasha.hire_employee("Faurlong", 59000)
moshood.hire_employee("Roberts", 60999)
#puts Employee.paid_over(50000)
#puts Employee.find_by_department("HR")
#p Employee.all[0].tax_bracket
#binding.pry
puts "done"
