#!/bin/bash

read -p "Enter the number of recent commands to sort: " num

if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number."
    exit 1
fi

history_list=$(tail -n "$num" ~/.bash_history)

sorted_commands=$(echo "$history_list" | sort)

echo "Recent commands sorted:"
echo "$sorted_commands"
