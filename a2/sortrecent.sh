#!/bin/bash

# Prompt user for the number of recent commands to sort
read -p "Enter the number of recent commands to sort: " num

# Validate if input is a number
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number."
    exit 1
fi

# Get the list of recent commands
history_list=$(tail -n "$num" ~/.bash_history)

# Sort the recent commands
sorted_commands=$(echo "$history_list" | sort)

# Print the sorted commands
echo "Recent commands sorted:"
echo "$sorted_commands"
