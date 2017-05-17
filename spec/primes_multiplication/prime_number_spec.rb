require 'spec_helper'

describe PrimesMultiplication::PrimeNumber do
  describe '#first' do
    subject { described_class.first(10) }
    it { is_expected.to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }
  end
end
