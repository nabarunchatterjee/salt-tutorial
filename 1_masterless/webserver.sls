#This tells salt to see if the nginx pkg is installed
#If not install it

nginx:                # ID declaration
  pkg:                # state declaration
    - installed       # function declaration
