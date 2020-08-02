accessing
rank
	| timeStampFactor |
	timeStampFactor := 1 / (((DateAndTime now - lastUsage) asSeconds) + 1).
	^ self rankBonus +  (numTimesSelected + 1) + (timeStampFactor * numTimesSelected) squared