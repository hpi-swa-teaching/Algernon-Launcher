accessing
rank
	| timeStampFactor |
	timeStampFactor := 1 / (((DateAndTime now - self lastUsage) asSeconds) + 1).
	^ self rankBonus +  (self numTimesSelected + 1) + ( timeStampFactor * self numTimesSelected) squared