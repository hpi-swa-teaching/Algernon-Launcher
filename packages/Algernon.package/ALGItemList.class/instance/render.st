rendering
render

	self items do: [ :each |
		each isEnabled ifFalse: [ self renderCategory: each ]].
	self popup