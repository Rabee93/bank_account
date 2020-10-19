require 'transaction'

describe Transaction do
  it 'can be a credit transaction' do
    transaction = Transaction.new(nil,5,3)
    expect(transaction.date).to eq(Date.today)
    expect(transaction.balance).to eq(3)
    expect(transaction.debit).to eq(nil)
    expect(transaction.credit).to eq(5)
  end
  it 'can be a debit transaction' do
    transaction = Transaction.new(7,nil,3)
    expect(transaction.date).to eq(Date.today)
    expect(transaction.balance).to eq(3)
    expect(transaction.debit).to eq(7)
    expect(transaction.credit).to eq(nil)
  end
  it 'throws an error if it receives a debit and credit transaction' do
    expect { Transaction.new(7,6,3) }.to raise_error(
      'a credit or debit can not be present at the same time')
  end
  it 'throws an error if it does not receive a debit and credit transaction' do
    expect { Transaction.new(nil,nil,3) }.to raise_error(
      'a credit or debit is required')
  end
end
