caching
buildCommentCache

	| classes dict |
	classes := Smalltalk allClasses asOrderedCollection.
	dict := IdentityDictionary new.
	classes do: [ :class | (self wordsOfCommentFromClass: class) do:
		[ :word | self add: class toDict: dict atValue: word onlyLetters ]].
	^ dict