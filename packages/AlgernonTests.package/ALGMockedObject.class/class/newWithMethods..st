instance creation
newWithMethods: aCollection

	^ self new
		mockedMethods: aCollection asSet;
		calls: Dictionary new;
		yourself