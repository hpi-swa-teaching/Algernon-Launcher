testing method type
testMethodNotEmpty
	| methods class |
	class := ALGCore.
	methods := ALGMethodType algertemListWith: class.
	self deny: methods isEmpty.