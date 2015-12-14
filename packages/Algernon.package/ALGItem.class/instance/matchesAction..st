relevance
matchesAction: aString

	^ self algeractions anySatisfy: [:action | action actionVerb = aString]