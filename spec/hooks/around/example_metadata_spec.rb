RSpec.describe 'something' do
  around(:example) do |example|
    puts example.metadata[:foo]
    example.run
  end

  it 'does something', :foo => 'this should show up in the output' do
  end
end