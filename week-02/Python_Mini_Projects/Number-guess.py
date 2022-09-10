
import random
top_range=input("Type a number: ")

if top_range.isdigit():
    top_range=int(top_range)
    
    if top_range<=0:
        print("Please enter a numbe greater than 0 next time")
        quit()
else:
    print("Please type a number next time")
    quit()

random_no=random.randint(0,top_range)

guess=0

while True:
    guess+=1
    user_guess=input("Mak a guess: ")
    if user_guess.isdigit():
        user_guess=int(user_guess)
    else:
        print("Plase type a number next time ")
        continue
    
    if user_guess==random_no:
        print("You got it!!!!!")
        break
    elif user_guess>random_no:
        print("You were above the number!")
    
    else:
        print("Your were below the number!")

        
print("You got it in ",guess,"guesses")
        
