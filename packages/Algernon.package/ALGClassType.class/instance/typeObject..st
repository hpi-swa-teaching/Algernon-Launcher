accessing
typeObject: anObject
	super typeObject: anObject.
	self comment: typeObject comment asString asLowercase.