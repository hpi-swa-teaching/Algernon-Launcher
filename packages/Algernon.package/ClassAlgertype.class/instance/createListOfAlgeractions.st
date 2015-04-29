list creation
createListOfAlgeractions
	| list aClass |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aClass := self typeObject.
	
	list add: (Algeraction withName:'browse class (existing)' 
					rank:10 target:self selector:#openInExistingBrowser: args:(OrderedCollection with:aClass)).
		list add: (Algeraction withName:'browse class (new)' 
					rank:9 target:self selector:#openInNewBrowser: args:(OrderedCollection with:aClass)).
	"list add: (Algeraction withName:'browse class (existing)' 
					rank:10 target:self selector:#openInExistingBrowser: args:(OrderedCollection with:aClass)).
		list add: (Algeraction withName:'browse class (new)' 
					rank:9 target:Browser selector:#fullOnClass: args:(OrderedCollection with:aClass))."
	"list add: (Algeraction withName:'methods' rank:3 target:aClass selector:#allSelectors args:#())."
		list add: (Algeraction withName:'fileOut class' 
					rank:8 target:aClass selector:#fileOut args:#()).
	list add: (Algeraction withName:'printOut class' 
					rank:7 target:aClass selector:#fileOutAsHtml: args:(OrderedCollection with:true)).
	list add: (Algeraction withName:'inspect instances' 
					rank:6 target:(aClass theNonMetaClass) selector:#inspectAllInstances args:#()).
	^list.