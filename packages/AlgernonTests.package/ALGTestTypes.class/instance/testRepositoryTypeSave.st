testing
testRepositoryTypeSave
	"Testing if the Save Function executes correctly; We cant tests this with a real repo, because the save action has blocking User Interaction"
	| repo |
	repo:=(ALGRepositoryType algertemListWith: 'Monticello') first.
	repo algerType save: nil withPackage: nil.
	