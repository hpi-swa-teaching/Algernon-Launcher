relevance
supportsActionVerb: aString

	^ self algeractions anySatisfy: [:action | action actionVerb = aString]