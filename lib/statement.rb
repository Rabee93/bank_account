require 'bank_account'
 class Statement

   def show_statement(transactions)
     lines = ['date || credit || debit || balance']
     transactions.reverse.each do |n|
       lines << n.join(' || ').gsub!('  ', ' ')
     end
     lines.join("\n")
   end
 end
