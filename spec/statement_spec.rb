require 'statement'


describe Statement do
  let(:statement) { Statement.new }
  describe '#show_statement' do
    it ' shows the date, deposit, withdraw and balance' do
      transactions = [
        double('transaction1', :date => Date.new(2020, 8, 10), :credit=>1000, :debit=>nil, :balance=>1000),
        double('transaction2', :date => Date.new(2020, 8, 10), :credit=>2000, :debit=>nil, :balance=>3000),
        double('transaction3', :date => Date.new(2020, 8, 10), :credit=>nil, :debit=>500, :balance=>2500),
      ]

      expect(statement.show_statement(transactions)).to eq(
        "date || credit || debit || balance\n" +
        + "10/08/2020 || || 500.00 || 2500.00\n" +
        + "10/08/2020 || 2000.00 || || 3000.00\n" +
        + "10/08/2020 || 1000.00 || || 1000.00")
      end
    end
  end
