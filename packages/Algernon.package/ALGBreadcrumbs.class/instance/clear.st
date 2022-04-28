updating
clear

	self removeAllMorphsIn: self submorphs.
	self 
		initializeNavigateBackIcon;
		initializeDefaultCrumb; 
		updateWidth