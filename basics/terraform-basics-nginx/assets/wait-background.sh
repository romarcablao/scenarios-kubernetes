#!/bin/bash

# waits for background init to finish

rm $0

clear

echo -n "Initialising Environment..."
while [ ! -f /tmp/.initterraform ]; do
    echo -n '.'
    sleep 1;
done;
echo " done"

echo -n "Initialising Scenario..."
while [ ! -f /tmp/.initfinished ]; do
    echo -n '.'
    sleep 1;
done;
echo " done"

echo
