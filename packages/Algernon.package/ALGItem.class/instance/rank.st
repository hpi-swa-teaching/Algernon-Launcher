accessors
rank
	| timeStampFactor |
	timeStampFactor := 1 / (((DateAndTime now - lastUsage) asSeconds) + 1).
	^ (numTimesSelected + 1) + ((timeStampFactor * numTimesSelected) squared).