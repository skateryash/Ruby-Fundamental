require_relative 'validation'

# Add new book details to the book records
def add_book
  print_lines
  puts "\nAdd Book: \n\n"
  print_lines

  loop do
    puts 'Enter Book Name: '
    book_name = titleize(valid_name('Book Name'))
    next if is_exist?(book_name)
    $books[book_name] = {}

    puts 'Enter Author Name: '
    $books[book_name]['author'] = valid_name('Author Name')

    puts 'Enter Book Genre: '
    $books[book_name]['genre'] = valid_name('Book Genre')

    puts 'Enter No of Copies: '
    $books[book_name]['copies'] = valid_int('Copies')

    puts 'Likes: '
    $books[book_name]['likes'] = valid_int('Likes')

    puts 'Price'
    $books[book_name]['price'] = valid_float('Price')

    puts "\nDetails of #{book_name} has been added in system.\n"

    print_lines
    print 'Add Some more Books[y/n]: '
    add_more = gets.chomp.strip
    print_lines
    break if add_more.downcase == 'n'
  end
end
