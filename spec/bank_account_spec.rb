require 'bank_account'

describe BankAccount do
  let(:account) {BankAccount.new}
    it"starts with 0 in the balance" do
      expect(account.balance).to eq(0)
    end
  describe '#deposit' do
    it 'adds money to the balance'do
    account.deposit(1000)
    expect(account.balance).to eq(1000)
  end
end
end
