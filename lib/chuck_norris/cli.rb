class ChuckNorris::CLI
  def call
    start
  end

  def start
    input = nil
    while input != "exit"
      puts ""
      puts "What do you want to do?"
      puts ""
      puts 'Enter "joke" to hear a Chuck Norris Joke'
      puts ""
      input = gets.chomp.downcase
      case input
        when "joke"
          puts "What kind of joke do you want to hear?"
          puts ""
          puts 'Enter "nerdy" to hear a nerdy joke'
          puts 'Enter "explicit" to hear an explicit joke'
          puts 'Enter "random" to hear a random joke'
          puts 'Enter a number to hear a specific joke (1-545)'
          puts 'Enter "exit" to quit'
          puts ""
          choice = gets.chomp.downcase
          if choice == 'nerdy'
            puts ChuckNorris::Joke.random(category="nerdy")
          elsif choice == 'explicit'
            puts ChuckNorris::Joke.random(category="explicit")
          elsif choice == 'random'
            puts ChuckNorris::Joke.random
          elsif choice.match /^\d{1,3}$/
            if choice.to_i > 0 && choice.to_i < 546
              puts ChuckNorris::Joke.fetch(choice)
            else
              puts "Not a valid joke number..."
              exit
            end
          else
            puts "Not a valid choice..."
            exit
          end
        when "exit"
          puts "Goodbye!"
          exit
      end
    end
  end
end
