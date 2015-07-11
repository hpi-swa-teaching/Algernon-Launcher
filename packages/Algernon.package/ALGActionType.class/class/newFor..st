instance creation
newFor: anAction
	| type |
	type := self new.
	type action: anAction.
	^ type.