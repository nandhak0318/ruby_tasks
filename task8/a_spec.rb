require('./mian.rb')
require 'rspec'

RSpec.describe Calculator do
    describe '#add' do
      it 'returns the sum of its arguments' do
        expect(Calculator.new.add(1, 2)).to eq(4)
      end
    end
  end