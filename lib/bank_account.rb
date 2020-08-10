require'Date'
class BankAccount
  attr_reader :balance
  def initialize
    @balance = 0
    @array = []
  end


def deposit(m)
  @balance += m
  @array << [Date.today.strftime('%d/%m/%Y'),'%.2f'% m, nil ,'%.2f'% @balance]
end


def withdraw(c)
  raise 'exceeded balance' if c > @balance
  @balance -= c
  @array << [Date.today.strftime('%d/%m/%Y'), nil,'%.2f'% c,'%.2f'% @balance]

end


def show_statment
  lines = ["date || credit || debit || balance"
  ]
@array.reverse.each do |n| lines << n.join(" || ").gsub!("  "," ")
end
lines.join("\n")

end
end
