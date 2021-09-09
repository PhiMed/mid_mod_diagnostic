class Department
  attr_reader :name,
              :employees

  attr_accessor :expenses

  def initialize(name)
    @name = name
    @employees = []
    @expenses = 0
  end

  def employees
    @employees
  end

  def hire(employee)
    @employees << employee
  end

  def employee_names
    @employees.map do |employee|
      employee.name
    end
  end
  
  def expense(charge)
    @expenses += charge
  end
end
