sylvia@LAPTOP-L7UU53IM:~$ cat learning_demo.sh
#!/bin/bash
# Favorite TV Shows in cinema
# This script interacts with the user, validates input, and simulates ordering a favorite TV show.
# Clear clears the screen so that the script starts with a clean interface.

clear
echo "==============================================="
echo "   Welcome to the Favorite TV Shows Selector"
echo "==============================================="

# Ask for user details
read -r -p "What's your name? " name

# Validate numeric age
while true; do
    read -r -p "Enter your age: " age
    if [[ "$age" =~ ^[0-9]+$ ]]; then
        break
    else
        echo "Invalid input. Please enter a numeric age."
    fi
done

read -r -p "Which city do you live in? " city
echo

# Age-based message using numeric comparison
if [ "$age" -ge 18 ]; then
    echo "Great, $name! You are $age, so you can enjoy all TV shows freely."
else
    echo "name, at $age you might need parental guidance for some shows."
fi

sleep 1

# Initialize loop
while true; do
    clear
    echo "==============================================="
    echo "$name from $city, choose your favorite TV show"
    echo "==============================================="
    echo
    echo "1. Breaking Bad        - \$9.99"
    echo "2. Stranger Things     - \$7.99"
    echo "3. The Office          - \$5.99"
    echo "4. Game of Thrones     - \$8.99"
    echo "5. The Mandalorian     - \$6.99"
    echo "6. Exit"
    echo

# Ask for Choices

    read -r -p "Enter the number of your favorite show (1–6): " choice
    echo

    # Handle choices
    case $choice in
        1)
            price=9.99
            echo "You chose Breaking Bad! Price: \$$price"
            read -r -p "Who's your favorite character? " character
            echo "Nice! $character definitely knows how to cook up some drama!"
            ;;
        2)
            price=7.99
            echo "You chose Stranger Things! Price: \$$price"
            read -r -p "Do you believe in the Upside Down? (yes/no): " answer
            if [[ "$answer" == "yes" ]]; then
                echo "Spooky! Let's hope Eleven's got your back!"
            else
                echo "Fair enough — better safe than sorry!"
            fi
            ;;
        3)
            price=5.99
            echo "You chose The Office! Price: \$$price"
            read -r -p "Who's the best boss? " boss
            echo "$boss? Classic choice! 'That's what she said!'"
            ;;
        4)
            price=8.99
            echo "You chose Game of Thrones! Price: \$$price"
            read -r -p "House Stark or House Lannister? " house
            echo "Ah, House $house — may your favorite character survive!"
            ;;
        5)
            price=6.99
            echo "You chose The Mandalorian! Price: \$$price"
            read -r -p "Do you prefer Mando or Grogu? " fav
            echo "This is the way. $fav is a legend!"
            ;;
        6)
            echo "Thanks for visiting, $name! See you next time!"
            break
            ;;
        *)
            echo "Invalid selection! Please enter a number between 1 and 6."
            ;;
    esac

    # Simulate order process
    echo
    echo "Processing your order..."
    sleep 2
    echo "Order completed at: $(date '+%Y-%m-%d %H:%M:%S')"

    echo
    read -r -p "Press Enter to return to the main menu..."
done