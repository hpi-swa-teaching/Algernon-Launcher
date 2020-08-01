testing class type
testClassNotEmpty

	| classes |

	classes := ALGClassType algertemList.
	self deny: classes isEmpty