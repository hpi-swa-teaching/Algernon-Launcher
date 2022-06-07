accessing
getDisplayedResult

	|command equationsResult|
	
	command := self getCommand asString.
	
	self isEquation
		ifTrue: [equationsResult := Compiler evaluate: command for: self logged: false. 
					^ equationsResult asString]
		ifFalse: [^ self standardDisplayedName]