testing class type
testClassesForCategoryNotEmpty

	| classes |

	classes := ALGClassType algertemListWith: #Algernon.
	self deny: classes isEmpty