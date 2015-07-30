instance creation
newIn: aController

	^ self basicNew
		controller: aController;
		initialize;
		yourself