system
registerNotifierFor: aSymbol

	SystemChangeNotifier uniqueInstance
		notify: self ofSystemChangesOfItem: aSymbol using: #systemChanged: