An ALGFuzzyMatcher implements the strategy pattern. It encapsulates a fuzzy search algorithm to match items based on a given search term.

It is given an item and a search term and outputs a numeric value that indicates how good the match is or nil if there is no match at all.

Take a look at scoreBetween:and: to see how the score is calcutated. This is the main method of this class.

Instance Variables
	foundChars:		Integer 			the number of characters that match
	isMatch:			Boolean 			whether the given item is considered to be a match
	itemName:			String 				the name of the item to be matched
	lastPosition:		Integer 			the index of the last character that was matched
	matchingPositions:	OrderedCollection 	a list of indizes that were matched (used for highlighting) 
	positionBackup:		Integer 			used to store the last position that was matched
