caching
wordsOfMethod: aMethod
	^ (self contentFromMethod: aMethod) asLowercase subStrings: ' '