require "employee"

class Startup
    attr_reader :name, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def funding
        @funding
    end

    def salaries
        @salaries
    end

    def valid_title?(title)
        return true if self.salaries[title] != nil

        false
    end

    def >(startup)
        return true if self.funding > startup.funding

        false
    end

    def hire(employee_name, title)
        if self.valid_title?(title)
            @employees << Employee.new(employee_name, title)
        else
            raise 'title invalid'
        end
    end    

    def size
        @employees.length
    end

    def pay_employee(employee)
        employee_pay = self.salaries[employee.title]

        if self.funding > employee_pay
            employee.pay(employee_pay)
            @funding -= employee_pay
        else
            raise 'error'
        end
    end

    def payday
        @employees.map { |employee| self.pay_employee(employee) }
    end
    
    def average_salary
        sum = 0
        @employees.each { |employee| sum += self.salaries[employee.title] }

        sum / self.size
    end

    def close
        @employees = []
        @funding = 0
    end
    
    def acquire(startup)
        @funding += startup.funding 
        
        startup.salaries.each do |title, salary|
            if @salaries[title] == nil
                @salaries[title] = salary
            end
        end                                                #startup.salaries.merge(@salaries)
                                                        
        @employees += startup.employees
        startup.close
        
    end
end 


