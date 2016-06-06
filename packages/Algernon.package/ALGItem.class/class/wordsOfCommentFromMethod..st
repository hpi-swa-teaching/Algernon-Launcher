caching
wordsOfCommentFromMethod: aMethod
	^ ((self contentFromMethod: aMethod) asLowercase findBetweenSubStrs: '"') second subStrings: ' '