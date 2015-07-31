An ALGAction implements the command pattern for actions that can be performed on an ALGItem.

Instance Variables
	name:					String 		the name that shows up in the menu
	rank:					Integer 	used for sorting (higher rank means it is put at top of list)
	numTimesSelected:	 	Integer 	number of times this action has been chosen
	theTarget:				Object 		the target of the command, i.e. an ALGItem	
	theSelector: 			Symbol 	the selector of the command
	theArgs: 				Collection 	the arguments of the command