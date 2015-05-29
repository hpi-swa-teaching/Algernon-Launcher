testing
testAlgertypeCategorizer
	"Make sure a list of Algertems is split into categories by their Algertype."
	| categorizer categories |
	categorizer := AlgertypeCategorizer new.
	algertemList add: MethodAlgertype new.
	categories := categorizer categorize: algertemList.
	self assert: (categories size > 0).
	self assert: (categories includesKey: #MethodAlgertype).
	 ^ nil