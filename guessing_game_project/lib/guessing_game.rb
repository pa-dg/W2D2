class GuessingGame
    def initialize(min_num, max_num)
        @min_num = min_num
        @max_num = max_num
        @secret_num = rand(min_num..max_num)
        @num_attempts = 0
        @game_over = false
    end
    
    def num_attempts
        @num_attempts
    end
    
    def game_over?
        @game_over
    end

    def check_num(num)
        @num_attempts += 1

       if num == @secret_num
            @game_over = true 
            puts "you win"
       else
            if num > @secret_num
                puts "too big"
            else
                puts "too small"
            end
       end
    end

    def ask_user
        p "enter a number"
        input_num = gets.chomp.to_i

        self.check_num(input_num)
    end

end
