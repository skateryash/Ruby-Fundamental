# Display all the records from book records
def list_books
  print_lines
  puts "|\tBook Name\t|\tAuthor Name\t|\tBook Genre\t|\tNo of Copies\t|\tLikes\t|\tPrice\t|"
  print_lines
  $books.each do |book, info|
    puts "|#{book.ljust(23)}|#{info['author'].ljust(23)}|#{info['genre'].ljust(23)}|\t#{info['copies']}\t\t|\t#{info['likes']}\t|\t#{info['price']}\t|"
  end
  print_lines

  puts "\n0-BACK"
  print '-> '
  gets.chomp
end

def print_lines
  puts '---------------------------------------------------------------------------------------------------------------------------------'
end
