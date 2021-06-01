instance-creation
newForController: aController extent: aPoint1 center: aPoint2

	^ self new
		extent: aPoint1;
		center: aPoint2;
		addInnerForController: aController;
		yourself