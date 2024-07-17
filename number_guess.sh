#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo -e "\n~~~~~~~~~~ Welcome to The Number Guessing Game ~~~~~~~~~~\n"

# When you run your script, you should prompt the user for a username with Enter your username:, and take a username as input. Your database should allow usernames that are 22 characters
echo -e "\nEnter your username:"
read USERNAME

