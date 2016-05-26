caching
wordsOfCommentFromClass: aClass
	^ aClass comment string asLowercase subStrings: ' '