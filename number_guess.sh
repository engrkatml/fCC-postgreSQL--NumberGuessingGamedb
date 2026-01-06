#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USERNAME

USERNAME_AVAILABLE=$($PSQL "SELECT username FROM users where username='$USERNAME'")
GAMES_PLAYED_BEFORE=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
BEST_GAME_BEFORE=$($PSQL "SELECT MIN(number_guesses) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")


if [[ -z $USERNAME_AVAILABLE ]]
  then
    INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES ('$USERNAME')")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else 
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED_BEFORE games, and your best game took $BEST_GAME_BEFORE guesses."
fi

RANDOM_NUMBER=$((1 + $RANDOM % 1000))
GUESS=1
echo -e "\nGuess the secret number between 1 and 1000:"

while read NUM
do
  if [[ ! $NUM =~ ^[0-9]+$ ]]
    then
      echo -n "That is not an integer, guess again:"
    else 
      if [[ $RANDOM_NUMBER -eq $NUM ]]
        then 
          break;
        else 
          if [[ $RANDOM_NUMBER -lt $NUM ]]
          then
            echo -n "It's lower than that, guess again:"
          elif [[ $RANDOM_NUMBER -gt $NUM ]]
          then
            echo -n "It's higher than that, guess again:"
          fi
      fi
  fi
  GUESS=$(( $GUESS + 1))
done

if [[ $GUESS == 1 ]]
  then 
    echo -n "You guessed it in $GUESS tries. The secret number was $RANDOM_NUMBER. Nice job!"
  else 
    echo -n "You guessed it in $GUESS tries. The secret number was $RANDOM_NUMBER. Nice job!"
fi

USER_ID=$($PSQL "SELECT user_id FROM users where username='$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games(number_guesses, user_id) VALUES($GUESS, $USER_ID)")
