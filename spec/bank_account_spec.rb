require 'bank_account'

describe BankAccount do
  let(:account) {BankAccount.new}
    it"starts with 0 in the balance" do
      expect(account.balance).to eq(0)
    end
  describe '#deposit' do
    it 'adds money to the balance'do
    expect { account.deposit(500) }.to change { account.balance }.by(500)
  end
end
describe '#withdraw' do
  it 'withdraws money from the balance' do
    account.deposit(1000)
  expect { account.withdraw(500) }.to change { account.balance }.by(-500)
  end
  it 'raises an error if the withdraw amount exceeds the balance' do
    account.deposit(1000)
    expect { account.withdraw(1001) }.to raise_error 'exceeded balance'
  end

end
end
