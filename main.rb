class Game
  @@board = [ "#", "#", "#", "#", "#", "#", "#", "#", "#" ]
  @@gameover = false
  def create_board()
    puts " #{@@board[0]} | #{@@board[1]} | #{@@board[2]} "
    puts "-----------"
    puts " #{@@board[3]} | #{@@board[4]} | #{@@board[5]} "
    puts "-----------"
    puts " #{@@board[6]} | #{@@board[7]} | #{@@board[8]} "
  end

  def update_board(player_choice, symbol)
    @@board[player_choice] = symbol
    create_board()
  end

  def check_for_win()
    if @@board[0] == "X" && @@board[1] == "X" && @@board[2] == "X"
      @@gameover = true
    elsif @@board[3] == "X" && @@board[4] == "X" && @@board[5] == "X"
      @@gameover = true
    elsif @@board[6] == "X" && @@board[7] == "X" && @@board[8] == "X"
      @@gameover = true
    elsif @@board[0] == "X" && @@board[3] == "X" && @@board[6] == "X"
      @@gameover = true
    elsif @@board[1] == "X" && @@board[4] == "X" && @@board[7] == "X"
      @@gameover = true
    elsif @@board[2] == "X" && @@board[5] == "X" && @@board[8] == "X"
      @@gameover = true
    elsif @@board[0] == "X" && @@board[4] == "X" && @@board[8] == "X"
      @@gameover = true
    elsif @@board[2] == "X" && @@board[4] == "X" && @@board[6] == "X"
      @@gameover = true
    elsif @@board[0] == "O" && @@board[1] == "O" && @@board[2] == "O"
      @@gameover = true
    elsif @@board[3] == "O" && @@board[4] == "O" && @@board[5] == "O"
      @@gameover = true
    elsif @@board[6] == "O" && @@board[7] == "O" && @@board[8] == "O"
      @@gameover = true
    elsif @@board[0] == "O" && @@board[3] == "O" && @@board[6] == "O"
      @@gameover = true
    elsif @@board[1] == "O" && @@board[4] == "O" && @@board[7] == "O"
      @@gameover = true
    elsif @@board[2] == "O" && @@board[5] == "O" && @@board[8] == "O"
      @@gameover = true
    elsif @@board[0] == "O" && @@board[4] == "O" && @@board[8] == "O"
      @@gameover = true
    elsif @@board[2] == "O" && @@board[4] == "O" && @@board[6] == "O"
      @@gameover = true
    end
  end

  def play_game()
    create_board()
    loop do
      puts "Player 1 choice (1-9):"
      player1_choice = gets.to_i

      while @@board[player1_choice] == "X" || @@board[player1_choice] == "O"
        create_board()
        puts "space taken!"
        puts "Player 1 choice (1-9):"
        player1_choice = gets.to_i
      end
      
      update_board(player1_choice, "X")

      check_for_win()

      if @@gameover == true
        puts "Player 1 wins!"
        break
      end
      
      puts "Player 2 choice (1-9):"
      player2_choice = gets.to_i

      while @@board[player2_choice] == "X" || @@board[player2_choice] == "O"
        create_board()
        puts "space taken!"
        puts "Player 2 choice (1-9):"
        player2_choice = gets.to_i
      end

      update_board(player2_choice, "O")

      check_for_win()
      

      if @@gameover == true
        puts "Player 2 wins!"
        break
      end
    end
    end
end

game = Game.new()
game.play_game