require 'statement'


describe Statement do
let(:account) { BankAccount.new }
let(:statement) { Statement.new }
  describe '#show_statement' do
    it ' shows the date, deposit, withdraw and balance' do
      allow(Date).to receive(:today) { Date.new(2020, 8, 10) }
      account.deposit(1000)
      account.deposit(2000)
      account.withdraw(500)

    expect(statement.show_statement(account.transactions)).to eq("date || credit || debit || balance
10/08/2020 || || 500.00 || 2500.00
10/08/2020 || 2000.00 || || 3000.00
10/08/2020 || 1000.00 || || 1000.00")
  end
end
end
