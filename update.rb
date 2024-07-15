require_relative 'validation'

# Update the information of book in book records
def change_book_details
  puts 'Change Book Details:'
  puts 'Enter Book Name to Change Details:'
  update_book = gets.chomp.strip.capitalize

  # Check if given book exist
  if $books.include?(update_book)
    puts "\nBook Name:\t#{update_book}"
    puts "Author Name:\t#{$books[update_book]['author']}"
    puts "Book Genre:\t#{$books[update_book]['genre']}"
    puts "No of Copies:\t#{$books[update_book]['copies']}"
    puts "Book Likes:\t#{$books[update_book]['likes']}"
    puts "Book Price:\t#{$books[update_book]['price']}"

    # Select fields to update
    loop do
      puts "\nWhat do you want to change?"
      puts "1. Name\n2. Author Name\n3. Book Genre\n4. No of Copies\n5. Likes\n6. Price"
      print '-> '
      update_choice = gets.chomp.to_i

      case update_choice
      when 1
        puts 'Enter New Name: '
        new_name = valid_name('Book Name').capitalize
        $books[new_name] = $books.delete(update_book)
        puts "\nBook Name: #{new_name} changed successfully."
      when 2
        puts 'Enter New Author Name: '
        $books[update_book]['author'] = valid_name('Author Name')
        puts "\nAuthor Name: #{$books[update_book]['author']} changed successfully."
      when 3
        puts 'Enter New Genre: '
        $books[update_book]['genre'] = valid_name('Book Genre')
        puts "\nGenre Name: #{$books[update_book]['genre']} changed successfully."
      when 4
        puts 'Enter New No of Copies: '
        $books[update_book]['copies'] = valid_int('Copies')
        puts "\nNo of Copies: #{$books[update_book]['copies']} changed successfully."
      when 5
        puts 'Enter New Likes: '
        $books[update_book]['likes'] = valid_int('Likes')
        puts "\nBook Likes: #{$books[update_book]['likes']} changed successfully."
      when 6
        puts 'Enter New Price: '
        $books[update_book]['price'] = valid_float('Price')
        puts "\nBook Price: #{$books[update_book]['price']} changed successfully."
      else
        puts 'Invalid Choice'
      end

      print_lines
      print 'Change some more details?[y/n]: '
      change_more = gets.chomp
      print_lines
      break if change_more.downcase == 'n'
    end
  else
    puts "\nAlert!: #{update_book} is not available in records"
  end

  puts "\n0-BACK"
  print '-> '
  gets.chomp
end
