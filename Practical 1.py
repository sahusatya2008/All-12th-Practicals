#1. Write a random number generator that generates random number between 1-6, (simulates a dice).
import random

def roll_dice():
    return random.randint(1, 6)

def main():
    print("Welcome to the simulation")
    print("Type 'roll' to start ")
    print("'quit' to exit to the program.")

    while True:
        command = input("Enter your command: ").strip().lower()
        if command == "roll":
            result = roll_dice()
            print("The number of the dice is", result)
        elif command == "quit":
            print("Thank You !!")
            break
        else:
            print("Its invalid command. Please type 'roll' or 'quit'.")

main()
