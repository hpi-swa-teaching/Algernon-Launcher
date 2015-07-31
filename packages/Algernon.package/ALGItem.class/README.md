An ALGItem represents a result provided by the system for a certain search term. Every ALGItem has an ALGType and a list of ALGAction that can be performed on the item.

Instance Variables
	lowerCaseName: 		 	String 			the item name stored in lowercase
	initials:					 	String			contains all the capital letters of the item name
	algeractions: 			 	Collection 		list of ALGAction that can be performed on this item
	algertype: 				 	ALGType 		the type of this item
	numTimesSelected: 	 	Integer 		incremented every time this item is hit return on
	isRelevantForEmptyString: 	Boolean 		whether this item will show up in the results even if there is no input
	lastUsage: 					TimeStamp 	the last time this item has been selected
	matchingPositions: 			Collection 		a list of icharacter indizes in the item name that are currently being matched
	defaultIndex: 				Integer 		the index of the default ALGAction in algeractions