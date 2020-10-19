# frozen_string_literal: true
require 'transaction'
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
    add_transaction(credit, nil)
  end

  def withdraw(debit)
    raise 'exceeded balance' if debit > @balance

    @balance -= debit
    add_transaction(nil, debit)
  end

  private

  def add_transaction(credit, debit)
    @transactions << Transaction.new(debit, credit, balance)
  end
end
