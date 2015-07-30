list creation
createListOfAlgeractions
	| list aClass |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aClass := self typeObject.
	
	list add: (ALGAction withName:'browse (existing)' 
					rank:10 target:self selector:#openInExistingBrowser: args:(OrderedCollection with:aClass)).
	list add: (ALGAction withName:'browse (new)' 
					rank:9 target:self selector:#openInNewBrowser: args:(OrderedCollection with:aClass)).
	list add: (ALGAction withName:'fileOut class' 
					rank:8 target:aClass selector:#fileOut args:#()).
	list add: (ALGAction withName:'printOut' 
					rank:7 target:aClass selector:#fileOutAsHtml: args:(OrderedCollection with:true)).
	list add: (ALGAction withName:'explore instances' 
					rank:6 target:aClass selector:#allInstancesDo: args:(OrderedCollection with:
						[ :instance | instance explore.])).
	list add: (ALGAction withName:'inspect instances'
					rank:5 target:(aClass theNonMetaClass) selector:#inspectAllInstances args:#()).
	
	^list.