require './player.rb'

player_index = rand(1..2)
puts player_index
default_life = 3
player1 = Player.new(default_life, 1)
player2 = Player.new(default_life, 2)

def conduct(_player, _other_player)
      puts _player.ask_question()
        answer = gets.chomp
        result = _player.validate_answer(answer)
        will_continue = _player.update_life(result)
        p1 = _player.player_number==1 ? _player : _other_player
      p2 = _player.player_number==2 ? _player : _other_player
      puts "P1: #{p1.life}/#{p1.init_life} vs P2: #{p2.life}/#{p2.init_life}"
        if will_continue
            puts "----- NEW TURN -----"
        else
                puts "----- GAME OVER -----"
            puts "Good bye!"
        end
      will_continue
end

while true do
      if player_index == 1
            if (!conduct(player1, player2))
                  break
            end
            player_index =2
      else
            if (!conduct(player2, player1))
                  break
            end
            player_index = 1

      end
end
