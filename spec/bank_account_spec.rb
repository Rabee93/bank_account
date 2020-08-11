# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  let(:account) { BankAccount.new }
  it'starts with 0 in the balance' do
    expect(account.balance).to eq(0)
  end
  describe '#deposit' do
    it 'adds money to the balance' do
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

  describe '#show_statment' do
    it ' shows the date, deposit, withdraw and balance' do
      allow(Date).to receive(:today) { Date.new(2020, 8, 10) }
      account.deposit(1000)
      account.deposit(2000)
      account.withdraw(500)

      expect(account.show_statment).to eq("date || credit || debit || balance
10/08/2020 || || 500.00 || 2500.00
10/08/2020 || 2000.00 || || 3000.00
10/08/2020 || 1000.00 || || 1000.00")
    end
  end
end
