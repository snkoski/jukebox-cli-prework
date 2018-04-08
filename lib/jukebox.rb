songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "exit : exits this program"
end

def list(available_songs)
  available_songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(available_songs)
  puts "Please enter a song name or number: "
  user_input = gets.chomp
  
  if (user_input.length > 2 ) && (available_songs.include? user_input)
      puts "Playing #{user_input}"
  elsif (user_input.to_i > 0) && (user_input.to_i <= available_songs.size)
    puts "Playing #{available_songs[user_input.to_i - 1]}"
  else
      puts"Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(available_songs)
  help
  
  puts "Please enter a command:"
  
  user_input = gets.chomp
  
  while user_input != "exit" do
    if user_input == "list"
      list(available_songs)
    elsif user_input == "play"
      play(available_songs)
    elsif user_input == "help"
      help
    end
    puts "Please enter a command"
    user_input = gets.chomp
  end
  exit_jukebox
end
