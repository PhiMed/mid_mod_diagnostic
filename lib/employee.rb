class Employee
  attr_reader :name,
              :age,
              :salary

  def initialize(attributes)
    @name = attributes[:name]
    @age = attributes[:age].to_i
    @salary = attributes[:salary].to_i 
  end
end
