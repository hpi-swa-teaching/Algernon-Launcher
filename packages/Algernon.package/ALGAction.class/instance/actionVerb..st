accessing
actionVerb: aString
	"the action verb is cached for performance reasons.
	The action verbe is used for filtering in the ActionVerbFilter,
	because it needs to be computed via substring, that's really
	expensive"
	actionVerb := aString