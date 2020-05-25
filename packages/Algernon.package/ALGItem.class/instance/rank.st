accessing
rank
	| timeStampFactor |
	timeStampFactor := 1 / (((DateAndTime now - lastUsage) asSeconds) + 1).
	^ self algerType rankBonus +  (numTimesSelected + 1) + (timeStampFactor * numTimesSelected) squared