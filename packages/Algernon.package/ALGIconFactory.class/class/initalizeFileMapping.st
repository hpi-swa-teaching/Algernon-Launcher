as yet unclassified
initalizeFileMapping
	FileMapping := Dictionary newFrom: {
		#ALGClassType -> (self iconsFolderName, 'icon_class.png').
		#ALGMethodType -> (self iconsFolderName, 'icon_method.png').
		#ALGCategoryType  -> (self iconsFolderName, 'icon_category.png').
		#ALGExpressionType -> (self iconsFolderName, 'icon_expression.png').
		#ALGGlobalVariableType -> (self iconsFolderName, 'icon_global_variable.png').
		#ALGMorphType -> (self iconsFolderName, 'icon_morph.png').
		#ALGWorldMenuMorphType -> (self iconsFolderName, 'icon_world_menu.png').
		#ALGPackageType -> (self iconsFolderName, 'icon_package.png').
		#ALGRepositoryType -> (self iconsFolderName, 'icon_repository.png').
		#ALGSettingsType -> (self iconsFolderName, 'icon_settings.png').
		#ALGTestType -> (self iconsFolderName, 'icon_test.png').
	}.