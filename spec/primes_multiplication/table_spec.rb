require 'spec_helper'

describe PrimesMultiplication::Table do
  let(:primes) { [2, 3, 5] }
  let(:instance) { described_class.new(primes) }

  describe '.table' do
    context 'when table is full' do
      subject { instance.table }
      let(:expected_table) do
        [
          [nil, 2, 3, 5],
          [2, 4, 6, 10],
          [3, 6, 9, 15],
          [5, 10, 15, 25]
        ]
      end

      it { is_expected.to eq expected_table }
    end
  end
end
