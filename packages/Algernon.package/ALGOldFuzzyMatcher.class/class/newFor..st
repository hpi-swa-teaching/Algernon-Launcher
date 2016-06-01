instance creation
newFor: aString
	
	^ self basicNew
		itemName: aString;
		initialize;
		yourself