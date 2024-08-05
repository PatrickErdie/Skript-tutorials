# Make the command

command /opengui:
    permission: op
    permission message: Sorry, you cannot run this command!
    trigger:

# make the gui inventory with the slots

        set {_gui} to chest inventory named "GUI" with 3 rows
        set slot 3 of {_gui} to grass block named "&bGrass Block"
        open {_gui} to player
#event

on inventory click:

# check event inventory name

    if name of event-inventory is "GUI":

# find the slot
        if index of event-slot = 3:

#do what u want

            cancel event
            send "You cannot take the grass block, mom said its my turn" to player

#Hope this helped
#8/10/2023