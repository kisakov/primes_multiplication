require 'spec_helper'

describe PrimesMultiplication::Table do
  let(:primes) { PrimesMultiplication::PrimeNumber.first(3) }
  let(:instance) { described_class.new(primes) }

  describe '.table' do
    subject { instance.table(10) }
    expected_table do
      [
        [2, 4, 6, 10],
        [3, 6, 9, 15],
        [5, 10, 15, 25]
      ]
    end

    it { is_expected.to eq expected_table }
  end
end
