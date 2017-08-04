require_relative "../models/entry.rb"

class MenuController
  attr_reader :entry

  def initialize
    @entry = Entry.new
  end

  def main_menu
    puts "Command Line Calculator"
    puts "1 - Do some math."
    puts "2 - Exit."
    print "Enter your selection: "
    selection = gets.to_i

    case selection
    when 1
      system "clear"
      calculations
      main_menu
    when 2
      puts "Goodbye"
      exit(0)
    end
  end

  def calculations
    system "clear"
    puts "Get Calculating..."
    input = gets.chomp

    entry.to_math(input)
  end
end
