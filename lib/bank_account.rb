class BankAccount
  attr_reader :balance
  def initialize
    @balance = 0
  end


def deposit(m)
  @balance += m
end
end 
