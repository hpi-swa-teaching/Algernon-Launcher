testing
testOpenBrowser
	"Test the do hotword by running an example query"
	| browserResults |
	self runQuery:  'open Browser'.
	browserResults := self items select: [:each | each name = 'Browser' ].
	self assert: browserResults notEmpty.