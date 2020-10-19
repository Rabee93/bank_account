
 class Statement

   def show_statement(transactions)
     lines = ['date || credit || debit || balance']
     transactions.reverse.each do |n|
       line = [n.date.strftime('%d/%m/%Y'),
         n.credit ? format('%.2f', n.credit) : nil,
         n.debit ? format('%.2f', n.debit) : nil,
         format('%.2f', n.balance)
        ]
       lines << line.join(' || ').gsub!('  ', ' ')
     end
     lines.join("\n")
   end
 end
