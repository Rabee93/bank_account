# frozen_string_literal: true

require 'Date'
# this class shows what a simple bank account application might look like.
class BankAccount
  attr_reader :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(credit)
    @balance += credit
    add_transaction(format('%.2f', credit), nil)
  end

  def withdraw(debit)
    raise 'exceeded balance' if debit > @balance

    @balance -= debit
    add_transaction(nil, format('%.2f', debit))
  end

  private

  def add_transaction(credit, debit)
    @transactions << [Date.today.strftime('%d/%m/%Y'), credit, debit,
               format('%.2f', @balance)]
  end
end
