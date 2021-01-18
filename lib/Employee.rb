class Employee
    @@all = []

    attr_accessor :name, :salary, :manager_name

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all.push(self)
    end

    def manager_name
        Manager.all.find{
            |manager_instance|
            if manager_instance.employees.include?(self)
                return manager_instance.name
            else
                "You do not have a manager."
            end
        }
        # binding.pry
    end

    def self.paid_over(amount)
        Employee.all.find_all{
            |employee_instance|
            employee_instance.salary > amount
        }
    end

    def self.find_by_department(department)
        Manager.all.find{
            |manager_instance|
            if manager_instance.department == department
                return manager_instance.employees[0]
            end
        }
    end

    def tax_bracket
        Employee.all.find_all{
            |employee_instance|
            lower_range = self.salary - 1000
            upper_range = self.salary + 1000
            employee_instance.salary.between?(lower_range, upper_range)
        }
    end


    def self.all 
    @@all
    end
end
