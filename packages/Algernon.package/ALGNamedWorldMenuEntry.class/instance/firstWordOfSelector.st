accessing
firstWordOfSelector
	
	self selector
		ifNil: [ ^ String empty ]
		ifNotNil: [ 
			| selectorString |
			selectorString := self selector asString.
			selectorString withIndexDo: 
				[ :letter :index | letter isUppercase 
					ifTrue: [ ^ selectorString wordBefore: index - 1 ]]. 
			^ selectorString ]
		