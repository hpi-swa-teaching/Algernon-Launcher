as yet unclassified
testRepositoryNotEmpty

	| repository label |
	label := 'Algernon'.
	repository := ALGRepositoryType algertemListWith: label.
	self deny: repository isEmpty
	