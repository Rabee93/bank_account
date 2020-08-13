class Transaction
  attr_reader :date , :debit, :credit, :balance
  def initialize (debit,credit,balance)
    if debit != nil && credit != nil
    raise 'a credit or debit can not be present at the same time'
  elsif debit == nil && credit == nil
    raise 'a credit or debit is required'
  end
    @date = Date.today
    @debit = debit
    @credit = credit
    @balance = balance

end
end
