# Find book with highest likes and price
def highest(element)
  if $books.empty?
    puts 'Please add some records to compare'
  else
    max_value = $books.values.map { |info| info[element] }.max
    highest_books = $books.select { |_,info| info[element] == max_value }

    # Display details of book with highest likes/price
    highest_books.each do |book,info|
      puts "\nBook with Highest #{element}:\n\n"
      puts "Book Name:\t#{book}"
      puts "Author Name:\t#{ [info]['author'] }"
      puts "Book Genre:\t#{ [info]['genre'] }"
      puts "No of Copies:\t#{ [info]['copies'] }"
      puts "Book Likes:\t#{ [info]['likes'] }" if element == 'likes'
      puts "Book Price:\t#{ [info]['price'] }\n\n" if element == 'price'
    end
  end

  puts '0-BACK'
  print '-> '
  gets.chomp
end
