require 'spec_helper'

describe PrimesMultiplication::PrimeNumber do
  let(:ten_primes) { [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }

  describe '#first' do
    subject { described_class.first(10) }

    it { is_expected.to eq ten_primes }
  end

  describe '#prime?' do
    context 'when all numbers are primes' do
      subject { ten_primes.map { |prime| described_class.prime?(prime) }.all? }

      it { is_expected.to be true }
    end

    context "when all numbers aren't primes" do
      let(:non_primes) { (0..20).to_a - ten_primes }
      subject { non_primes.map { |prime| described_class.prime?(prime) }.none? }

      it { is_expected.to be true }
    end
  end
end
