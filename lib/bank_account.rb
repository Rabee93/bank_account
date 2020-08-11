require'Date'
class BankAccount
  attr_reader :balance
  def initialize
    @balance = 0
    @array = []
  end

def statment_lines(credit,debit)
  @array << [Date.today.strftime('%d/%m/%Y'), credit, debit ,'%.2f'% @balance]
end


def deposit(credit)
  @balance += credit
  statment_lines('%.2f'% credit,nil)

end


def withdraw(debit)
  raise 'exceeded balance' if debit > @balance
  @balance -= debit
  statment_lines(nil,'%.2f'% debit)

end


def show_statment
  lines = ["date || credit || debit || balance"
  ]
@array.reverse.each do |n| lines << n.join(" || ").gsub!("  "," ")
end
lines.join("\n")

end
end
