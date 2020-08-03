instance creation
newFrom: aCollection in: aController
	^ self new
		controller: aController;
		updateWith: aCollection