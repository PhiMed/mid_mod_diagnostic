require './lib/employee'
require './lib/department'

RSpec.describe Department do
  it 'exists' do
    customer_service = Department.new("Customer Service")
    expect(customer_service).to be_an_instance_of(Department)
  end

  it 'has attributes' do
    customer_service = Department.new("Customer Service")
    expect(customer_service.name).to eq("Customer Service")
    expect(customer_service.employees).to eq([])
  end

  it 'can hire people and add to employees array' do
    customer_service = Department.new("Customer Service")
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    customer_service.hire(bobbi)
    customer_service.hire(aaron)
    expect(customer_service.employees).to eq([bobbi, aaron])
  end

  it 'can track and add expenses' do
    customer_service = Department.new("Customer Service")
    expect(customer_service.expenses).to eq(0)
    customer_service.expense(100)
    customer_service.expense(25)
    expect(customer_service.expenses).to eq(125)
  end
end
