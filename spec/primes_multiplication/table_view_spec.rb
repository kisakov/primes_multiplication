require 'spec_helper'

describe PrimesMultiplication::TableView do
  let(:instance) { described_class.new(table) }
  subject { instance.display }

  describe '.display' do
    context 'when table is full' do
      let(:table) do
        [
          [nil, 2, 3, 5],
          [2, 4, 6, 10],
          [3, 6, 9, 15],
          [5, 10, 15, 25]
        ]
      end
      let(:expected_table) do
        <<-END.gsub(/^\s+\|/, '')
          |    2  3  5
          | 2  4  6 10
          | 3  6  9 15
          | 5 10 15 25
        END
      end

      it { expect { subject }.to output(expected_table).to_stdout }
    end

    context 'when table is empty' do
      let(:table) { [] }
      let(:expected_warning) { described_class::EMPTY_WARNING + "\n" }

      it { expect { subject }.to output(expected_warning).to_stdout }
    end
  end
end
