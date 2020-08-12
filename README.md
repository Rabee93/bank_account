
# Bank_account_tech_test.
------------
### How to install.
- clone the project
- make sure you have ruby 2.7.0 installed
- open the terminal and type `cd` to `bank_tech_test`
- run `bundle install`

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
$ irb
2.7.0 :001 > require './lib/bank_account'
 => true
2.7.0 :002 > account = BankAccount.new
2.7.0 :003 > account.deposit(1000)
 => [["11/08/2020", "1000.00", nil, "1000.00"]]
2.7.0 :004 > account.withdraw(500)
 => [["11/08/2020", "1000.00", nil, "1000.00"], ["11/08/2020", nil, "500.00", "500.00"]]
2.7.0 :005 > puts account.show_statment
date || credit || debit || balance
11/08/2020 || || 500.00 || 500.00
11/08/2020 || 1000.00 || || 1000.00
 => nil
 ```


###Test.

To run the test: type rspec in the terminal
you will see the test coverage at the end of the rspec output
----
