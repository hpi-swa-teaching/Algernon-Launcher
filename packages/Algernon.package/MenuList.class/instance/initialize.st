initialization
initialize
	super initialize.
	algernonListItems := OrderedCollection new.
	self stayUp:true.
	self cornerStyle: #square.
	self hResizing: #rigid.
	self borderWidth: 0.
	self shadowOffset: 0@0. 