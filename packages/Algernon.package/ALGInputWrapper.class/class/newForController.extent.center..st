as yet unclassified
newForController: aController extent: aPoint1 center: aPoint2

	^ self new
		extent: aPoint1;
		center: aPoint2;
		addInner;
		controller: aController;
		yourself.