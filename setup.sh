bash

Copy
#!/bin/bash

# Clear the screen
clear

# Initialize variables
height=20
width=40
x=0
y=0
dx=1
dy=1

# Loop to create the animation
while true; do
    # Clear the screen
    clear

    # Print the ball at the new position
    for ((i=0; i<height; i++)); do
        for ((j=0; j<width; j++)); do
            if [ $i -eq $y ] && [ $j -eq $x ]; then
                echo -n "O"
            else
                echo -n " "
            fi
        done
        echo ""
    done

    # Update the position of the ball
    x=$((x + dx))
    y=$((y + dy))

    # Bounce off the walls
    if [ $x -le 0 ] || [ $x -ge $((width - 1)) ]; then
        dx=$(( -dx ))
    fi
    if [ $y -le 0 ] || [ $y -ge $((height - 1)) ]; then
        dy=$(( -dy ))
    fi

    # Delay to control the speed of the animation
    sleep 0.05
done
