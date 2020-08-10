class BankAccount
  attr_reader :balance
  def initialize
    @balance = 0
  end


def deposit(m)
  @balance += m
end


def withdraw(m)
  raise 'exceeded balance' if m > @balance 
  @balance -= m
end
end
