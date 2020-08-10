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
describe '#withdraw' do
  it 'withdraws money from the balance' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.balance).to eq(500)
  end
end 
end
