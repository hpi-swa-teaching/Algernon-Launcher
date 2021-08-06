testing repository type
testRepositoryTypeOpen
	| browserWindowCount repo |
	repo := (ALGRepositoryType algertemListWith: 'Monticello') first.
	browserWindowCount := self currentSystemWindows size.
	self assert: [(repo algerActions detect: [:action| action name = 'open']) do]
		 opensNewWindow: 'Repository'