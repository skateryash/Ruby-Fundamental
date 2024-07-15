def valid_name(field)
  loop do
    input = gets.chomp.strip
    if input.empty?
      puts "#{field} can't be empty. Enter some value."
    else
      return input.to_s
    end
  end
end

def is_exist?(book)
  if $books.include?(book)
    puts "#{book} already exist. Enter unique book name."
    return true
  end
  false
end

def valid_int(field)
  loop do
    input = gets.chomp.strip
    if input =~ /^\d+$/
      return input.to_i
    else
      puts "Invalid input. Please enter valid number for #{field}"
    end
  end
end

def valid_float(field)
  loop do
    input = gets.chomp.strip
    if input =~ /^\d+(\.\d+)?$/
      return input.to_f
    else
      puts "Invalid input. Please enter valid number for #{field}"
    end
  end
end

def titleize(str)
  str.split(/ |\_/).map(&:capitalize).join(' ')
end

def print_lines
  puts '---------------------------'
end
