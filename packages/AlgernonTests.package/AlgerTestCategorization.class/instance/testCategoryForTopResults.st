testing
testCategoryForTopResults

	self assert: categories isEmpty not.
	self assert: (categories select: [ :aCategory | aCategory title = ALGCategory titleTopResults ]) isEmpty not