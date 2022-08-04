accessing
getDisplayedResult

	| command equationsResult |
	
	command := self getCommand asString.
	
	self isEquation
		ifTrue: [equationsResult := [Compiler evaluate: command for: self logged: false] 
					on: ZeroDivide do: [^'Don´t divide by zero' ].
					^ equationsResult asString]
		ifFalse: [^ self standardDisplayedName]