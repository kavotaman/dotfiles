#!/bin/bash

# Number of keyframes you want to generate
num_keyframes=10

# Total duration in seconds
total_duration=10

# Generate random keyframe settings
echo "Time (seconds) | Position X | Position Y | Scale | Rotation"
echo "----------------------------------------------------------"

previous_time=0

for ((i=1; i<=num_keyframes; i++)); do
    # Generate random time for the next keyframe
    time_increment=$(awk -v min=1 -v max=2 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
    current_time=$((previous_time + time_increment))

    # Ensure the time does not exceed total duration
    if [ "$current_time" -gt "$total_duration" ]; then
        current_time=$total_duration
    fi

    # Generate random Position X and Position Y values (-100 to 100)
    pos_x=$(awk -v min=-100 -v max=100 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
    pos_y=$(awk -v min=-100 -v max=100 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')

    # Generate random Scale value (90 to 110%)
    scale=$(awk -v min=90 -v max=110 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')

    # Generate random Rotation value (-10 to 10 degrees)
    rotation=$(awk -v min=-10 -v max=10 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')

    # Output the generated keyframe values
    echo "$current_time              | $pos_x         | $pos_y         | $scale% | $rotation°"

    # Update the previous time
    previous_time=$current_time

    # Break if the end of the duration is reached
    if [ "$current_time" -eq "$total_duration" ]; then
        break
    fi
done

