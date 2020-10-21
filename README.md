
# Bank_account_tech_test.
------------
### How to install.
- clone the project.
- make sure you have ruby 2.7.0 installed.
- open the terminal and type `cd` to `bank_tech_test`.
- run `bundle install`.

### Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012

And a deposit of 2000 on 13-01-2012

And a withdrawal of 500 on 14-01-2012

When she prints her bank statement

Then she would see

date || credit || debit || balance

14/01/2012 || || 500.00 || 2500.00

13/01/2012 || 2000.00 || || 3000.00

10/01/2012 || 1000.00 || || 1000.00

### Usage example
```
rabeimghrabi@rabeis-Air bank_tech_test % irb 
2.7.0 :001 > require_relative 'lib/bank_account'
 => true 
2.7.0 :002 > require_relative 'lib/statement'
 => true 
2.7.0 :003 > require_relative 'lib/transaction'
 => true 
2.7.0 :004 > account = BankAccount.new
2.7.0 :005 > statement = Statement.new  
2.7.0 :006 > account.deposit(1000)
 => [#<Transaction:0x00007fce161b1b10 @date=#<Date: 2020-10-20 ((2459143j,0s,0n),+0s,2299161j)>, @debit=nil, @credit=1000, @balance=1000>] 
2.7.0 :007 > account.withdraw(300)
 => [#<Transaction:0x00007fce161b1b10 @date=#<Date: 2020-10-20 ((2459143j,0s,0n),+0s,2299161j)>, @debit=nil, @credit=1000, @balance=1000>, #<Transaction:0x00007fce16190870 @date=#<Date: 2020-10-20 ((2459143j,0s,0n),+0s,2299161j)>, @debit=300, @credit=nil, @balance=700>] 
2.7.0 :008 > puts statement.show_statement(account.transactions)
date || credit || debit || balance
20/10/2020 || || 300.00 || 700.00
20/10/2020 || 1000.00 || || 1000.00
 => nil 
 ```


### Test.

- To run the test: type rspec in the terminal.

- you will see the test coverage at the end of the rspec output.
