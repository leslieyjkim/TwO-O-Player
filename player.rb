class Player
      def initialize(life, player_number, correct_answer=0)
            @init_life = life
            @life = life
            @player_number = player_number
            @correct_answer = correct_answer
      end
      attr_accessor:life
      attr_accessor:player_number
      attr_accessor:init_life

      def ask_question
            first_value = rand(1..20)
            second_value = rand(1..20)
            question = "Player #{@player_number}: What does #{first_value} plus #{second_value} equal ?"
            @correct_answer = first_value + second_value
            puts question
      end
      def validate_answer(_answer)
            _answer = _answer.to_i
            puts "given answer : #{_answer}, correct_answer : #{@correct_answer}"
            if @correct_answer == _answer
                  puts "Player #{@player_number}: YES! You are correct."
                  true
            else
                  puts "Player #{@player_number}: Seriously? No!"
                  false
            end
      end
      def update_life(_is_correct)
            if (!_is_correct)
                  @life -=1
            end
            @life > 0
      end
end
