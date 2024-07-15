require_relative 'add'
require_relative 'compare'
require_relative 'update'
require_relative 'list'
require_relative 'highest'

$books = {}

# Infinite loop for menu
loop do
  puts '********Welcome to BookInfo********'
  puts '1. Add Book'
  puts '2. Compare Books'
  puts '3. Change Book Details'
  puts '4. List Books'
  puts '5. Find Book with Highest Likes'
  puts '6. Find Book with Highest Price'
  puts '7. Quit'
  puts '***********************************'

  print 'Enter your choice: '
  choice = gets.chomp.to_i

  case choice
  when 1
    add_book
  when 2
    compare_books
  when 3
    change_book_details
  when 4
    list_books
  when 5
    highest('likes')
  when 6
    highest('price')
  when 7
    break
  else
    puts 'Invalid Choice'
  end
end
