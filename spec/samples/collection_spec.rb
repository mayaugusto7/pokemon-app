# require 'rails_helper'
require 'set'

RSpec.shared_examples 'a collection' do
  let(:collection) { described_class.new([7, 2, 4]) }

  context 'initialized with 3 items' do
    it 'says it has three items' do
      expect(collection.size).to eq(2)
    end
  end
end