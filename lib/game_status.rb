# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],

[0,3,6],
[1,4,7],
[2,5,8],

[0,4,8],
[2,4,6]


]
board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]

def winner(board)
  index=[]
  index=won?(board)
  if index==false
    return nil
  else
    if index[0]=="X"
      return "X"
    else
      return "O"
    end
  end
end

def won?(board)
  WIN_COMBINATIONS.each{|win_combo|
  win_index_1=win_combo[0]
  win_index_2=win_combo[1]
  win_index_3=win_combo[2]

p1=board[win_index_1]
p2=board[win_index_2]
p3=board[win_index_3]

if position_1== "X"&&position_2=="X"&&position_3=="X"
  return win_combo
else
  position_1== "O"&&position_2=="O"&&position_3=="O"
  return win_combo
end
}
return false
end

def full?(board)
  !board.any? { |index| index == "X "||index=="O" }

end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elseif !won?(board) && full?(board)|| !won?(board)
    return false
  end
end
def over?(board)
  if(won?(board)||full?(board)||draw?(board))
    return ture
  else
    return false
  end
end
draw?(board)
