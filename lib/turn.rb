def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 def valid_move?(board, index)
   if index >= 0 && index <= 9
     if board[index] != "X" || board[index] == "O"
       return true
     else
       puts "Sorry! That's an invalid move!"
      return false
     end
   else
     return false
   end
 end

 def move(board, index, token = "X")
   board[index] = token
   return board
 end

 def input_to_index(input)
   return input.to_i - 1
 end

 def turn(board)
   puts "Please enter 1-9:"
  user_input = gets.strip
   index = input_to_index(user_input)
   if valid_move?(board, index)
     board = move(board, index)
     display_board(board)
   else
     until valid_move?(board, index)
       puts "Sorry! That's an invalid move!"
       puts "Please enter 1-9:"
       user_input = gets.strip
       index = input_to_index(user_input)
     end
     board = move(board, index)
     display_board(board)
  end
 end
