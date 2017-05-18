require 'spec_helper'
require 'prime'

RSpec.shared_examples 'a prime numbers' do
  let(:ten_primes) { [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }

  describe '#first' do
    context 'when n = 10' do
      let(:n) { 10 }
      subject { described_class.first(n) }

      it { is_expected.to eq ten_primes }
    end

    context 'when n = 1000' do
      let(:n) { 1000 }
      subject { described_class.first(n) }

      it { is_expected.to eq(Prime.first(n)) }
    end
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

describe PrimesMultiplication::PrimeNumberSlow do
  it_behaves_like 'a prime numbers'
end

describe PrimesMultiplication::PrimeNumberFast do
  it_behaves_like 'a prime numbers'
end
