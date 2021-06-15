RSpec.describe 'before and after callbacks' do
  before(:context) do
    @outer_state = 'set in outer before context'
  end

  example 'in outer group' do
    expect(@outer_state0).to eq('set in outer before context')
  end

  describe 'nested group' do
    before(:context) do
      @inner_state = 'set in inner before context'
    end

    example 'in nested group' do
      expect(@outer_state).to eq('set in outer before context')
      expect(@inner_state).to eq('set in inner before context')
    end

    after(:context) do
      expect(@inner_state).to eq('set in inner before context')
    end
  end

  after(:context) do
    expect(@outer_state).to eq('set in outer before context')
  end
end
