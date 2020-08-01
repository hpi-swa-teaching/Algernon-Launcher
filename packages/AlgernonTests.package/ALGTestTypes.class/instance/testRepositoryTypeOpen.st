testing repository type
testRepositoryTypeOpen
	| browserWindowCount repo |
	repo:=(ALGRepositoryType algertemListWith: 'Monticello') first.
	browserWindowCount := self currentSystemWindows size.
	(repo algerActions detect: [:action| action name = 'open']) do.
	self assert: browserWindowCount < self currentSystemWindows size