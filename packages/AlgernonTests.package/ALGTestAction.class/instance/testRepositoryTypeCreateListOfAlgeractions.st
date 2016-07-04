testing
testRepositoryTypeCreateListOfAlgeractions
	
	| repos |
	repos := ALGRepositoryType getReposFor: 'Algernon'.
	repos do: [ :each |
		self assert: (ALGRepositoryType
				withType: (each description)
				withPackage: 'Algernon') createListOfAlgeractions notEmpty]