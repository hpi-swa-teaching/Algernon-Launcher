initialization
initializeAlgertems
	DefaultAlgertems := OrderedCollection new
		addAll: ClassAlgertype algertemList;
		addAll: CategoryAlgertype algertemList;
		addAll: GlobalVariableAlgertype algertemList;
		addAll: MorphAlgertype algertemList;
		addAll: WorldMenuMorphAlgertype algertemList;
		yourself
	