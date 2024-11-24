#Module
import random
import time
import os 

#logo
def logo():
    print("""

  /$$$$$$                                                  
 /$$__  $$                                                 
| $$  \__/ /$$   /$$  /$$$$$$$ /$$$$$$$  /$$$$$$   /$$$$$$ 
| $$ /$$$$| $$  | $$ /$$_____//$$_____/ /$$__  $$ /$$__  $$
| $$|_  $$| $$  | $$|  $$$$$$|  $$$$$$ | $$$$$$$$| $$  \__/
| $$  \ $$| $$  | $$ \____  $$\____  $$| $$_____/| $$      
|  $$$$$$/|  $$$$$$/ /$$$$$$$//$$$$$$$/|  $$$$$$$| $$      
 \______/  \______/ |_______/|_______/  \_______/|__/      
                                                           
\033[1;32m  --------------------------------------
\033[1;92m || ----≥ CREATOR >> PRAJWAL.          ||  
\033[1;92m || ----≥ FACEBOOK >> PRAJWAL SIWAKOTI ||
\033[1;92m || ----≥ GITHUB >>                    ||
\033[1;92m || ----≥ STEATS >> FREE               ||            
\033[1;92m || ----≥ GAME >> GUSSER               ||                  
\033[1;92m  --------------------------------------                                                                                     
""")

def linex():
    print("\033[1;92m  --------------------------------------")
    
#clear
def clear():
    os.system('clear')
    logo()
    linex()
    

#Typing Animation 
def typing_ani(text):
    for char in text:
        print(char , end ='',flush = True)
        time.sleep(0.09)

     
#Game title
clear()
typing_ani("\t\tGuessing Game")

#Loop
while True:
    
    #Game mode
    typing_ani("\nEnter [Easy : E, Medium : M, Hard : H , Quit : Q] : ")
    user = input()
    user = user.upper()

      #Easy Mode
    def Easy():
        typing_ani("\nGuess the Number Between 1 to 20")
        #Target
        Target = random.randint(1,20)
        attempt= 0
        

        while True:
            try:
                typing_ani("\nGuess a number {Quit : 0} : ")
                n = int(input())#User Input
                attempt +=1
            except ValueError:
                typing_ani("\nInvalid Input! Enter a number.")#If user input another character 
                continue 
            if (n > 0 and n<=20):
                if (n == Target):#Checking results 
                    typing_ani(f"\nYOU WON! The Guess is correct you have Guess it in {attempt} attempt ")
                    clear()
                    break
                elif (n>Target):
                    typing_ani("\nIt is Too high! Input Lower number ")
                else:
                    typing_ani("\nIt is Too low! Input Higher number")
                    
            elif (n == 0 ):
                 attempt -=1
                 typing_ani(f"\nYou have done {attempt} attempt. The number was {Target}")
                 typing_ani("\n\tThanks for playing ")
                 typing_ani("\n\t\t\tMade by Prajwal Siwakoti\n")
                 exit()
            else:
                typing_ani("\nGuess between 1 to 20")
                
    
        #Medium Mode
    def Medium():
        typing_ani("\nGuess the number between 1 to 100")
        Target = random.randint(1,100)
        attempt= 0

        while True:
            try:
                typing_ani("\nGuess a number {Quit : 0} : ")
                n = int(input())
                attempt +=1
            except ValueError :
                typing_ani("\nInvalid Input! Enter a number.")
                continue 
            if (n > 0 and n<=100):
                if (n == Target):
                    typing_ani(f"\nYOU WON! The Guess is correct you have Guess it in {attempt} attempt ")
                    clear()
                    break
                elif (n>Target):
                    typing_ani("\nIt is Too high! Input Lower number ")
                else:
                    typing_ani("\nIt is Too low! Input Higher number")
            elif (n == 0 ):
                attempt -= 1
                typing_ani(f"\nYou have done {attempt} attempt. The number was {Target}")
                typing_ani("\n\tThanks for playing ")
                typing_ani("\n\t\t\tMade by Prajwal Siwakoti\n")
                exit()
            else:
                typing_ani("\nGuess between 1 to 100 ")
    #Hard mode 
    def Hard():
        typing_ani("\nGuess the number between 1 to 1000")
        Target = random.randint(1,1000)
        attempt= 0

        while True:
            try:
                typing_ani("\nGuess a number {Quit : 0} : ")
                n = int(input())
                attempt += 1
            except ValueError :
                typing_ani("\nInvalid Input! Enter a number.")
                continue 
            if (n > 0 and n<=1000):
                if (n == Target):
                    typing_ani(f"\nYOU WON! The Guess is correct you have Guess it in {attempt} attempt ")
                    clear()
                    break
                elif (n>Target):
                    typing_ani("\nIt is Too high! Input Lower number ")
                else:
                    typing_ani("\nIt is Too low! Input Higher number")
            elif (n == 0 ):
                 attempt -=1
                 typing_ani(f"\nYou have done {attempt} attempt.The number was {Target}")
                 typing_ani("\n\tThanks for playing ")
                 typing_ani("\n\t\t\tMade by Prajwal Siwakoti\n")
                 exit()
            else:
                typing_ani("\nGuess between 1 to 1000 ")
            

     #checking mode                    
    if (user == "E"):
        clear()
        Easy()
    elif (user == "M"):
        clear()
        Medium()
    elif (user == "H"):
        clear()
        Hard()
    elif(user == "Q"):#Thanking player
                 typing_ani("\n\t\tThanks for playing ")
                 typing_ani("\n\n\t\t\tMade by Prajwal Siwakoti\n")
                 exit()
    else:
        typing_ani("Enter a valid option {E , M , H ,Q}")
    