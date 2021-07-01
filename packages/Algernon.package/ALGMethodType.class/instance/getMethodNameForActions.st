helpers
getMethodNameForActions
	"When in nested class search, class methods get the (class) prefix. For executing actions this prefix needs to be ignored"
	self typeObject
		ifNotNil: [
			(self typeObject includesSubstring: self class prefixForClassMethods)
				ifTrue: [ ^ (self typeObject withoutLeading: self class prefixForClassMethods) asSymbol ] ].
	
	^ self typeObject