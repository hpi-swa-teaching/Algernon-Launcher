list creation
createListOfAlgeractions
	| list aMethod |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aMethod := self typeObject.
	
	list add: (Algeraction withName:'browse method (existing)' 
					rank:10 target:self selector:#openInExistingBrowser: args:(OrderedCollection with:aMethod)).
	list add: (Algeraction withName:'browse method (new)' 
					rank:9 target:self selector:#openInNewBrowser: args:(OrderedCollection with:aMethod)). 
	list add: (Algeraction withName:'browse senders' 
					rank:13 target:self selector:#browseAllCallsOn: args:(OrderedCollection with:aMethod)). 
	list add: (Algeraction withName:'browse implementors' 
					rank:12 target:self selector:#browseAllImplementorsOf: args:(OrderedCollection with:aMethod)). 
	"list add: (Algeraction withName:'methods' rank:3 target:aClass selector:#allSelectors args:#())."
"	list add: (Algeraction withName:'fileOut class' 
					rank:8 target:aMethod selector:#fileOut args:#()).
	list add: (Algeraction withName:'printOut class' 
					rank:7 target:aMethod selector:#fileOutAsHtml: args:(OrderedCollection with:true)).
	list add: (Algeraction withName:'inspect instances' 
					rank:6 target:(aMethod theNonMetaClass) selector:#inspectAllInstances args:#()).'"
	^list.