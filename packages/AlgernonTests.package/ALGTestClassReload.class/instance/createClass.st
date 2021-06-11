helpers
createClass
	Object subclass: className
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTemporaryClasses.
	#('foo' 'bar self foo' 'baz self bar') do:
		[:s| (Smalltalk at: className) compileSilently: s]