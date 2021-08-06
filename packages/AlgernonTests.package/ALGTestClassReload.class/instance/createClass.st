helpers
createClass
	Object subclass: self className
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTemporaryClasses.
	#('foo' 'bar self foo' 'baz self bar') do:
		[:s | (Smalltalk at: self className) compileSilently: s]