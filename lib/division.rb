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
end
