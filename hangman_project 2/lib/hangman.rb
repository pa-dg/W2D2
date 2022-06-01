class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    return DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_" ) 
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end
  
  def already_attempted?(char)
    attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    arr_of_matching_indices = []

    @secret_word.each_char.with_index do |sw_char, i|
      if char == sw_char
        arr_of_matching_indices << i
      end
    end

    arr_of_matching_indices
  end
  
  def fill_indices(char, arr_of_indices)
    arr_of_indices.each { |i| @guess_word[i] = char }
  end

  def try_guess(char)
    if self.already_attempted?(char)
      puts "that has already been attempted"
      return false
    end

    attempted_chars << char

    matching_indices = self.get_matching_indices(char)
    self.fill_indices(char, matching_indices)

    @remaining_incorrect_guesses -= 1 if matching_indices.empty?

    true
  end

  def ask_user_for_guess
    puts "Enter a char"
    input_char = gets.chomp

    return self.try_guess(input_char)
  end

  def win?
    if @guess_word.join("") == @secret_word
      puts "WIN"
      return true
    end

      
      false
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    end

    false
  end
  
  def game_over?
    if self.win? || self.lose?
      puts @secret_word
      return true
    end

    false
  end
  
end

