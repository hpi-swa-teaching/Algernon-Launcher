loading
iconFor: anItem

	| typeName |
	"(anItem isKindOf: ALGItem) ifFalse: [ ^ nil ]."
	typeName := anItem algertype class name.
	^ self loadIconFor: typeName