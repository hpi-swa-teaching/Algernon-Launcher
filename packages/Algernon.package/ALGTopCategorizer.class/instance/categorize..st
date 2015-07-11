categorizing
categorize: anAlgertemList
	| categories |
	categories := OrderedCollection new.
	categories add: (self extractFrom: anAlgertemList).
	^ self sorter sort: categories inOrder: #desc