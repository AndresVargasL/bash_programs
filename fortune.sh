#!/bin/bash
#Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"
#in terminal ARR=("a" "b" "c")
#in terminal echo ${ARR[1]}
#in terminal echo ${ARR[*]} // echo ${ARR[@]}
#in terminal declare -p ARR
GET_FORTUNE() {
    if [[ ! $1 ]]
    then
        echo -e "Ask a yes or no question:\n"
    else
        echo "Try again. Make sure it ends with a question mark: "
    fi
  read QUESTION
}
#in terminal help until
#until [[ $QUESTION == test? ]]
GET_FORTUNE
until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
done  
  RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
  N=$(( RANDOM % 6 ))
  echo -e "\n${RESPONSES[$N]}"
#in terminal help [[
#in terminal [[ hello == hello ]]; echo $? ==> 0
#in terminal [[ hello == hello ]]; echo $? ==> 1
#in terminal [[ hello =~ el ]]; echo $? ==> 0
#in terminal [[ "hello world" =~ "lo wor" ]]; echo $? ==> 0
#[[ "hello world" =~ ^h ]]; echo $? ==> 0
#[[ "hello world" =~ ^h.+d$ ]]; echo $? ==> 0