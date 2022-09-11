name=input("Type your name: ")
print("Welcome",name,"to this adventure!!")

answer= input("\nYou are riding a jeep in a jungle, your jeep ran out of gas and now you are stuck. You have two houses in front of you. You can choose right or left. Which one would you like to choose?").lower()

if answer=="right":
    answer=input("The house is actually a library and now you are made to choose between comic and fantasy. Which one would you choose? ")
    
    if answer=="comic":
        print("\nOhh NO!! This is a cursed book and now you are a duck because of this. You lost!!")
    elif answer=="fantasy":
        print("\nOhhh! Writer was a magician and he changed you into a sparrow. You lost!")
    else:
        print("\nNot a valid option. You lose")
elif answer=="left":
    answer=input("\nThe house you just entered is hanuted. Would you go forward or head back? ").lower()
    
    if answer=="back":
        print("\nYou go back and lose. ")
    elif answer=="forward":
      
        answer=input("\nThere's a man with a scary face. Would you talk to him or not?\n").lower()
        if answer=="yes":
            print("\nMan gave you a treasure box and you won!!!\n")
        elif answer=="no":
            print("\nYou ignored the person and you lost\n")
        else:
            print("\nNot a valid option. You lose")
            
    else:
        print("\nNot a valid option. You lose")
else:
    print("\nNot a valid option. You lose")

print("\nThank you for trying ",name)
