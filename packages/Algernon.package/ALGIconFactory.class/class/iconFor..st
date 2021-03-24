constants
iconFor: anItem

	| typeName |
	typeName := anItem algerType class name.
	^ self getInstance loadIconFor: typeName