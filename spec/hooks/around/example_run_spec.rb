RSpec.describe 'around filter' do
  around(:example) do |example|
    puts 'around example before'
    example.run
    puts 'around example after'
  end

  it 'get run in order' do
    puts 'in the example'
  end
end