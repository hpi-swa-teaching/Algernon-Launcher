testing
testOpenBrowser
	"Test the do hotword by running an example query"
	| browserResults |
	self core textField contents: 'open Browser'.
	self core updateItemList.
	browserResults := core itemList items select: [:each | each item name = 'Browser' ].
	self assert: browserResults notEmpty.
	self deactivateCore.