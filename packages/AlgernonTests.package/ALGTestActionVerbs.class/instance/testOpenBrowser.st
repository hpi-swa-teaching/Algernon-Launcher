testing
testOpenBrowser
	| browserResults |
	self runQuery:  'open Browser'.
	browserResults := self items select: [:each | each name = 'Browser' ].
	self assert: browserResults notEmpty.