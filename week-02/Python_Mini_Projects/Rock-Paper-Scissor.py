
import random
user_wins=0
comp_wins=0

options=["rock","paper","scissors"]

while True:
        user_input=input("Type Rock/Paper/Scissors or Q to quit: ").lower()
        if user_input == "q":
            break
        
        if user_input not in options:
            continue

        random_no=random.randint(0,2)

        comp_pick=options[random_no]

        print("Computer picked", comp_pick+". ")

        if user_input =="rock" and comp_pick=="scissors":
            print("You won!!")
            user_wins+=1

        elif user_input =="paper" and comp_pick=="rock":
            print("You won!!")
            user_wins+=1

        elif user_input =="scissors" and comp_pick=="paper":
            print("You won!!")
            user_wins+=1
        else:
            print("Computer won, You lost!!")
            comp_wins+=1

print("You won", user_wins," times")
print("The computer won ", comp_wins," times")
print("Good Bye!!")
