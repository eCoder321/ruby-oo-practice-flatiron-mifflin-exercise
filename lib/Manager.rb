class Manager
    @@all = []
    @@departments = []

    attr_accessor :name, :age, :department, :employees
    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @employees = []
        @@departments.push(department)
        @@all.push(self)
    end

    def hire_employee(employee_name, employee_salary)
        self.employees.push(Employee.new(employee_name, employee_salary))
    end

    def self.all_departments
        @@departments.uniq
    end

    def self.all_ages
        Manager.all.collect{
            |manager_instance|
            manager_instance.age
        }
    end

    def self.average_age
        managers_count = @@all.length
        total_age = Manager.all_ages.inject(0){
            |sum, age|
            sum + age
        }
        (total_age.to_f/managers_count.to_f).round(2)
        # binding.pry
    end

    def self.all 
        @@all
    end

end
