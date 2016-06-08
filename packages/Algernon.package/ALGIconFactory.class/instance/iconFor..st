loading
iconFor: anItem

	| typeName |
	"(anItem isKindOf: ALGItem) ifFalse: [ ^ nil ]."
	typeName := anItem algerType class name.
	^ self loadIconFor: typeName