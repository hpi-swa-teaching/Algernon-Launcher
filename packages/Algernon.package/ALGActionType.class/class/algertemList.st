instance creation
algertemList
	
	| save |
	
	save := self newFor: (ALGAction new name: 'save'; theTarget: self; theSelector: #save; theArgs: {}).
	^ {ALGItem new algerType: save}