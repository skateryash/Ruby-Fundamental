# Compare details of 2 books from book records
def compare_books
  puts 'Compare Books:'

  puts 'Enter Book 1:'
  book1 = titleize(gets.chomp.strip)
  puts 'Enter Book 2:'
  book2 = titleize(gets.chomp.strip.capitalize)

  # Check if given book exist
  if $books.include?(book1) && $books.include?(book2)
    puts "\nBook Name:\t#{book1}\t\t#{book2}"
    puts "Author Name:\t#{$books[book1]['author']}\t#{$books[book2]['author']}"
    puts "Book Genre:\t#{$books[book1]['genre']}\t#{$books[book2]['genre']}"
    puts "No of Copies:\t#{$books[book1]['copies']}\t\t#{$books[book2]['copies']}"
    puts "Book Likes:\t#{$books[book1]['likes']}\t\t#{$books[book2]['likes']}"
    puts "Book Price:\t#{$books[book1]['price']}\t\t#{$books[book2]['price']}"
  elsif $books.include?(book1)
    puts "\nAlert!: #{book2} is not available in records"
    puts "\nBook Name:\t#{book1}"
    puts "Author Name:\t#{$books[book1]['author']}"
    puts "Book Genre:\t#{$books[book1]['genre']}"
    puts "No of Copies:\t#{$books[book1]['copies']}"
    puts "Book Likes:\t#{$books[book1]['likes']}"
    puts "Book Price:\t#{$books[book1]['price']}"
  elsif $books.include?(book2)
    puts "\nAlert!: #{book1} is not available in records"
    puts "\nBook Name:\t#{book2}"
    puts "Author Name:\t#{$books[book2]['author']}"
    puts "Book Genre:\t#{$books[book2]['genre']}"
    puts "No of Copies:\t#{$books[book2]['copies']}"
    puts "Book Likes:\t#{$books[book2]['likes']}"
    puts "Book Price:\t#{$books[book2]['price']}"
  else
    puts "\nAlert!: #{book1} and #{book2} are not available in records."
  end

  puts "\n0-BACK"
  print '-> '
  gets.chomp
end
