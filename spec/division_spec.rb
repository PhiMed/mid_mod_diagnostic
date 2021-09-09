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
