testing
testBackgroundIsAbandonedCorrectly
	| tempCore bg |
	tempCore := ALGCore new.
	bg := tempCore background.
	tempCore abandon.
	self assert: (bg owner = nil).