RSpec.describe 'something' do
  around(:example) do |example|
    puts 'around example setup'
    example.run
    puts 'around example cleanup'
  end

  it 'still executes tje entire around hook' do
    fail 'the example blows up'
  end
end