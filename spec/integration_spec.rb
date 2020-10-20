describe "Integration test" do
  let(:account) { BankAccount.new }
  let(:statement) { Statement.new }

    it 'Checks if the Statement shows the correct statement for the BankAccount' do
      allow(Date).to receive(:today) { Date.new(2020, 8, 10) }
      account.deposit(1000)
      account.deposit(2000)
      account.withdraw(500)

      expect(statement.show_statement(account.transactions)).to eq(
        "date || credit || debit || balance\n" +
        + "10/08/2020 || || 500.00 || 2500.00\n" +
        + "10/08/2020 || 2000.00 || || 3000.00\n" +
        + "10/08/2020 || 1000.00 || || 1000.00")
      end
  end
