# Snake game in Python:
```python


import curses
from random import randint
curses.initscr()
win=curses.newwin(20,60,0,0)
win.keypad(1)
curses.noecho()
curses.curs_set(0)
win.border(0)
win.nodelay(1)


#snake and food
snake=[(4,10),(4,9),(4,8)]
food=(10,20)

win.addch(food[0],food[1],'#')
score=0

ESC=27
key=curses.KEY_RIGHT


while key != ESC:
    win.addstr(0,2,'Score' +str(score)+ ' ')
    win.timeout(150 - (len(snake)) //5 +len(snake)//10 % 120)
 
    prev_key=key
    event=win.getch()
    key=event if event != -1 else prev_key
    
    if key not in [curses.KEY_LEFT, curses.KEY_RIGHT, curses.KEY_UP, curses.KEY_DOWN, ESC]:
        key = prev_key
        
    
    y=snake[0][0]
    x=snake[0][1]
    if key ==curses.KEY_DOWN:
        y += 1
    if key ==curses.KEY_UP:
        y -= 1
    if key ==curses.KEY_LEFT:
        x -= 1
    if key ==curses.KEY_RIGHT:
        x += 1
    
    snake.insert(0,(y,x))
    
    # check if we hit the border
    
    if y==0: break
    if y==19:break
    if x==0:break
    if x==59:break
        
    # if snake runs over iself
    if snake[0] in snake[1:]:break
    
    if snake[0]==food:
        score +=1
        food=()
        while food ==():
            food =(randint(1,18),randint(1,58))
            if food in snake:
                food=()
        win.addch(food[0],food[1],'#')
    else:
        #move snake
        last=snake.pop()
        win.addch(last[0],last[1],' ')
        
    
        
    win.addch(snake[0][0],snake[0][1],'*')

curses.endwin()
print(f"Final score={score}")
```

# Tic-Tac-Toe in Python:
```python
board = ["-", "-", "-",
         "-", "-", "-",
         "-", "-", "-"]

game_still_going = True

winner = None
current_player = "X"

def play_game():

  display_board()

  while game_still_going:

    handle_turn(current_player)

    check_if_game_over()

    flip_player()
  
  if winner == "X" or winner == "O":
    print(winner + " won.")
  elif winner == None:
    print("Tie.")


def display_board():
  print("\n")
  print(board[0] + " | " + board[1] + " | " + board[2] + "     1 | 2 | 3")
  print(board[3] + " | " + board[4] + " | " + board[5] + "     4 | 5 | 6")
  print(board[6] + " | " + board[7] + " | " + board[8] + "     7 | 8 | 9")
  print("\n")


def handle_turn(player):

  print(player + "'s turn.")
  position = input("Choose a position from 1-9: ")

  valid = False
  while not valid:

    while position not in ["1", "2", "3", "4", "5", "6", "7", "8", "9"]:
      position = input("Choose a position from 1-9: ")
 
    position = int(position) - 1

    if board[position] == "-":
      valid = True
    else:
      print("You can't go there. Go again.")
  board[position] = player
  display_board()


# Check if the game is over
def check_if_game_over():
  check_for_winner()
  check_for_tie()


def check_for_winner():
  global winner
  row_winner = check_rows()
  column_winner = check_columns()
  diagonal_winner = check_diagonals()
  if row_winner:
    winner = row_winner
  elif column_winner:
    winner = column_winner
  elif diagonal_winner:
    winner = diagonal_winner
  else:
    winner = None


def check_rows():
  global game_still_going
  row_1 = board[0] == board[1] == board[2] != "-"
  row_2 = board[3] == board[4] == board[5] != "-"
  row_3 = board[6] == board[7] == board[8] != "-"
  if row_1 or row_2 or row_3:
    game_still_going = False
  if row_1:
    return board[0] 
  elif row_2:
    return board[3] 
  elif row_3:
    return board[6] 
  else:
    return None


def check_columns():
  global game_still_going
  column_1 = board[0] == board[3] == board[6] != "-"
  column_2 = board[1] == board[4] == board[7] != "-"
  column_3 = board[2] == board[5] == board[8] != "-"
  if column_1 or column_2 or column_3:
    game_still_going = False
  # Return the winner
  if column_1:
    return board[0] 
  elif column_2:
    return board[1] 
  elif column_3:
    return board[2] 
  else:
    return None


def check_diagonals():
  global game_still_going
  diagonal_1 = board[0] == board[4] == board[8] != "-"
  diagonal_2 = board[2] == board[4] == board[6] != "-"
  if diagonal_1 or diagonal_2:
    game_still_going = False
  if diagonal_1:
    return board[0] 
  elif diagonal_2:
    return board[2]
  else:
    return None


def check_for_tie():
  global game_still_going
  # If board is full
  if "-" not in board:
    game_still_going = False
    return True
  else:
    return False


def flip_player():
  global current_player
  if current_player == "X":
    current_player = "O"
  elif current_player == "O":
    current_player = "X"

play_game()
```
