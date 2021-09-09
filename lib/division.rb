class Division
  attr_reader :name,
              :departments

  def initialize(name)
    @name = name
    @departments = []
  end

  def add_departments(department)
    @departments << department
  end

  def depts_with_mult_employees
    @departments.find_all do |dept|
      dept.employees.count >= 2
    end
  end

  def divisional_employee_roster
    @departments.map do |dept|
      dept.employee_names
    end.flatten
  end
end
