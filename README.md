## Number Guessing Game

###### Technologies:
<p align="center">
<img src="https://img.icons8.com/color/75/000000/console.png" width="75" height="75" alt="Bash" style="margin: 10px 15px 0 15px;" />
<img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/postgresql-colored.svg" width="75" height="75" alt="PostgreSQL" style="margin: 10px 15px 0 15px;" />
</p>

- **Bash:** Used for writing shell scripts that facilitate interaction with the number guessing game.
- **PostgreSQL:** Relational database management system used to store data about users and their game performances.

### Try it!

To run the Number Guessing Game application, follow the instructions in the Setup section below.

### Functionality

This project demonstrates a number guessing game where users try to guess a randomly chosen number between 1 and 1000. The PostgreSQL database stores information about users and their game performances, while the bash script facilitates interaction with the system.

## Project Structure

- `number_guess.sql`: Contains the SQL script to create and populate the PostgreSQL database.
- `number_guess.sh`: Bash script that manages the functionality for playing the number guessing game.

## Setup

### Prerequisites

- PostgreSQL installed
- Bash shell

### Installation Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/creinis/number-guess-game-fcc-rel-db-cert.git
   cd number-guessing-game
   ```

2. Create the PostgreSQL database and tables:
   ```bash
   psql -U postgres -f number_guess.sql
   ```

3. Make the bash script executable:
   ```bash
   chmod +x number_guess.sh
   ```

4. Run the bash script to start the number guessing game:
   ```bash
   ./number_guess.sh
   ```

## Usage

### Playing the Number Guessing Game

1. Run the `number_guess.sh` script to start the game.
2. Enter your username when prompted.
   - If you are a new user, you will be greeted with a welcome message for new users.
   - If you are a returning user, you will see a welcome back message along with your game statistics.
3. Follow the prompts to guess the secret number between 1 and 1000.
   - If your guess is higher than the secret number, you will be prompted to guess lower.
   - If your guess is lower than the secret number, you will be prompted to guess higher.
4. Continue guessing until you correctly guess the secret number.
5. Your game statistics will be updated and displayed after each game.

## Practical Use Case

This project can be used as an educational tool to demonstrate basic scripting with bash and SQL database operations. It showcases how to integrate a command-line interface with a relational database for user interaction and data storage.

## Benefits

- **Structured Data Management:** Organizes information about users and their game performances into relational tables for efficient querying.
- **Simple Interaction:** Bash scripts provide an intuitive command-line interface to play the game and interact with the database.
- **Ease of Maintenance:** SQL and bash scripts simplify initial setup and ongoing maintenance of the system.
- **Extensibility:** Potential for future expansion with new features, such as detailed user statistics or additional game modes.

---
#### This is a FreeCodeCamp Challenge for Relational Database Projects Certification
<p align="center">
<img src="https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg" width="250" height="75" alt="freeCodeCamp" style="margin: 0 15px; opacity: 0.6" />
</p>
