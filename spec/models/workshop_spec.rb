RSpec.describe Workshop, :lifecycle do
  it 'is expected to have a name' do 
    workshop = Workshop.create(name: 'name')
    expect(workshop).to have_attributes( {name: 'name'})
  end 
end