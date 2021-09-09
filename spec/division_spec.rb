require './lib/employee'
require './lib/department'
require './lib/division'

RSpec.describe Division do

  it 'exists' do

    marketing = Division.new("Marketing")

    expect(marketing).to be_an_instance_of(Division)
  end

  it 'can lists its departments' do

    marketing = Division.new("Marketing")
    customer_service = Department.new("Customer Service")
    research_and_development = Department.new("Research and Development")
    expect(marketing.departments).to eq([])

    marketing.add_departments(customer_service)
    marketing.add_departments(research_and_development)

    expect(marketing.departments).to eq([customer_service, research_and_development])
  end

  it 'can list all deparments with multiple employees' do
    marketing = Division.new("Marketing")
    customer_service = Department.new("Customer Service")
    research_and_development = Department.new("Research and Development")

    marketing.add_departments(customer_service)
    marketing.add_departments(research_and_development)

    expect(marketing.depts_with_mult_employees).to eq([])

    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    svetlana = Employee.new({name: "Svetlana Boyko", age: "34", salary: "100000"})
    raul = Employee.new({name: "Raul Singh", age: "29", salary: "75000"})

    customer_service.hire(bobbi)
    customer_service.hire(aaron)
    research_and_development.hire(svetlana)

    expect(marketing.depts_with_mult_employees).to eq([customer_service])

    research_and_development.hire(raul)

    expect(marketing.depts_with_mult_employees).to eq([customer_service, research_and_development])
  end

  it 'can list all employees names' do

    marketing = Division.new("Marketing")
    customer_service = Department.new("Customer Service")
    research_and_development = Department.new("Research and Development")

    marketing.add_departments(customer_service)
    marketing.add_departments(research_and_development)

    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    svetlana = Employee.new({name: "Svetlana Boyko", age: "34", salary: "100000"})
    raul = Employee.new({name: "Raul Singh", age: "29", salary: "75000"})

    expect(marketing.divisional_employee_roster).to eq([])


    customer_service.hire(bobbi)
    customer_service.hire(aaron)
    research_and_development.hire(svetlana)
    research_and_development.hire(raul)

    expect(marketing.divisional_employee_roster).to eq(["Bobbi Jaeger", "Aaron Tanaka", "Svetlana Boyko", "Raul Singh"])
  end
end
