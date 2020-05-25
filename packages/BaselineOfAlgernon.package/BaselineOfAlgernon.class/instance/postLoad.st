baseline
postLoad
	(((Smalltalk respondsTo: #globals) 
		ifTrue: [Smalltalk globals] "Squeak >=4.1"
		ifFalse: [Smalltalk]) "Pharo and squeak <=4.0"
		at: #SwaLint) perform: #install.