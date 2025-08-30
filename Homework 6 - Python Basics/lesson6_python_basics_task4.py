import random

print("Lets play a guess game! I think about a number from 1 to 5, and you are trying to guess it!")
the_number = random.randint(1, 5)
the_guess = int(input("The number is: "))
if the_guess > the_number:
    print("Too big!")
elif the_guess < the_number:
    print("Too small!")
else:
    print("You guessed it!")