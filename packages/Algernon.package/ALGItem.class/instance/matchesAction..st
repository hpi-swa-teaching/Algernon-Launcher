relevance
matchesAction: aString

	^ self algerActions anySatisfy: [:action | action actionVerb = aString]