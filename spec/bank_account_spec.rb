require 'bank_account'

describe BankAccount do
  let(:account) {BankAccount.new}
  describe 'balance' do
    it"shows the current balance" do
      expect(account.balance).to eq(0)
    end
  end
end
