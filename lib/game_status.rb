# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6], 
  [1, 4, 7],
  [2, 5, 8]
  ]
  
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if (win_combo[0] == "X" && win_combo[1] == "X" && win_combo[2] == "X") || (win_combo[0] == "O" && win_combo[1] == "O" && win_combo[2] = "O"))
      winning_array
    else
      false
    end 
  end
end

def full?(board)
  board.all? do |token|
    if (token == "X" || token == "O")
    true 
    else 
    false 
    end
  end
end

def draw?(board)
  if (full?(board) == true && won?(board) == false)
    true
  elsif ((full?(board) == false && won?(board) == true) && (won?(board) == false))
    false
  end
end

def over?(board)
  if (won?(board) == true || draw?(board) == true || full?(board) == true) || (won?(board) == true && full?(board) == false)
    true
  elsif (won?(board) == false || draw?(board) == false || full?(board) == false)
    false
  end
end

def winner(board)

end
