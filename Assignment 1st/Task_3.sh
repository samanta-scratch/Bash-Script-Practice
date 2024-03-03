#!/bin/bash

# store different hostname to different variables
HOST1="google.com"
HOST2="amazon.com.bangladesh"


# check if HOST1 is reachable
ping -c 1 $HOST1 && echo "$HOST1 is reachable."


# check if HOST2 is reachable
ping -c 1 $HOST2 || echo "$HOST2 is unreachable."

