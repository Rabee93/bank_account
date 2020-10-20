# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  let(:account) { BankAccount.new }
  let(:transaction) { spy('transaction') }
  it'starts with 0 in the balance' do
    expect(account.balance).to eq(0)
  end
  describe '#deposit' do
    it 'adds money to the balance' do
      allow(Transaction).to receive(:new).and_return(transaction)
      expect { account.deposit(500) }.to change { account.balance }.by(500)
      expect(account.transactions.length).to eq 1
      expect(account.transactions[0]).to eq transaction
      expect(Transaction).to have_received(:new).with(nil, 500, 500)
    end
  end
  describe '#withdraw' do
    it 'withdraws money from the balance' do
      allow(Transaction).to receive(:new).and_return(transaction)
      account.deposit(1000)
      expect(Transaction).to have_received(:new).with(nil, 1000, 1000)
      expect { account.withdraw(500) }.to change { account.balance }.by(-500)
      expect(account.transactions.length).to eq 2
      expect(Transaction).to have_received(:new).with(500, nil, 500)
    end
    it 'raises an error if the withdraw amount exceeds the balance' do
      account.deposit(1000)
      expect { account.withdraw(1001) }.to raise_error 'exceeded balance'
    end
  end
end
