matching
matches: aLowercaseString
	"Check if the search string occurs in the itemName."
	self matchingStart: (self itemName findString: aLowercaseString).
	self matchingPositions: (self matchingStart to: (self matchingStart + aLowercaseString size - 1)).
	^ self matchingStart > 0.