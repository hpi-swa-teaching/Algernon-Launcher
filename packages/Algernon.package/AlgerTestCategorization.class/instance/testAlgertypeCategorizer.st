testing
testAlgertypeCategorizer
	"Make sure a list of Algertems is split into categories by their Algertype."
	| categorizer algertem categories |
	categorizer := AlgertypeCategorizer new.
	algertem := Algertem withAlgertype: (CategoryAlgertype new).
	algertemList add: algertem.
	categories := categorizer categorize: algertemList.
	self assert: (categories size > 0).
	self assert: (categories includesKey: #CategoryAlgertype).
	 ^ nil