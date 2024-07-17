#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo -e "\n~~~~~~~~~~ Welcome to The Number Guessing Game ~~~~~~~~~~\n"

# When you run your script, you should prompt the user for a username with Enter your username:, and take a username as input. Your database should allow usernames that are 22 characters
echo -e "\nEnter your username:"
read USERNAME

# If that username has been used before, it should print Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses., with <username> being a users name from the database, <games_played> being the total number of games that user has played, and <best_game> being the fewest number of guesses it took that user to win the game
USERNAME_CHECK=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'" )

GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(best_game) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")

if [[ -z $USERNAME_CHECK ]]
then
  NEW_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
# If the username has not been used before, you should print Welcome, <username>! It looks like this is your first time here.
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# The next line printed should be Guess the secret number between 1 and 1000: and input from the user should be read
# Until they guess the secret number, it should print It's lower than that, guess again: if the previous input was higher than the secret number, and It's higher than that, guess again: if the previous input was lower than the secret number. Asking for input each time until they input the secret number.

SECRET_NUMBER=$(( 1 + $RANDOM % 1000 ))
NUMBER_OF_GUESSES=1
echo "Guess the secret number between 1 and 1000:"

while read NUM
do
  if [[ ! $NUM =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    
