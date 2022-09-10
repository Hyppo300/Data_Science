print("Welcome to quiz game!!")
play=input("Do you want to play? ")

if play.lower()!= "yes":
    quit()
else:
    
    print("Okay! Let's play. ")
    score=0
    answer=input("What does CPU stand for?")
    if answer.lower()=="central processing unit":
        print("Correct!!")
        score+=1
    else:
        print("Incorrect!")

    answer=input("What does GPU stand for?")
    if answer.lower()=="graphics processing unit" :
        print("Correct!")
        score+=1
    else:
        print("Incorrect!!")

    answer=input("What does PSU stand for?")
    if answer.lower()=="Power Supply" :
        print("Correct!")
        score+=1
    else:
        print("Incorrect!!")

    answer=input("What does USA stand for?")
    if answer.lower()=="united states of america" :
        print("Correct!")
        score+=1
    else:
        print("Incorrect!!")

    answer=input("What does RAM stand for?")
    if answer.lower()=="random access memory" :
        print("Correct!")
        score+=1
    else:
        print("Incorrect!!")


    print("You got "+str(score)+" questions correct!")
    print("You got "+str((score/4)*100)+"%")
