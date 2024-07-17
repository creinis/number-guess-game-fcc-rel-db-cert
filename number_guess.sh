#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo -e "\n~~~~~~~~~~ Welcome to The Number Guessing Game ~~~~~~~~~~\n"

# When you run your script, you should prompt the user for a username with Enter your username:, and take a username as input. Your database should allow usernames that are 22 characters
echo -e "\nEnter your username:"
read USERNAME

# If that username has been used before, it should print Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses., with <username> being a users name from the database, <games_played> being the total number of games that user has played, and <best_game> being the fewest number of guesses it took that user to win the game
USERNAME_CHECK=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'" )


