helpers
lintingRules

	^ {
		"Bugs"
		#smallLintBooleanPrecedence.
		#smallLintMethodModifierFinal.
		#smallLintMethodModifierSuper.
		#smallLintMethodModifierOverride.
		#smallLintUsesTrue.
		#smallLintOverridesSpecialMessage.
		#smallLintSubclassResponsibilityNotDefined.
		#smallLintMethodModifierSuper.
		#smallLintUndeclaredReference.
		#smallLintSendsUnknownMessageToGlobal.
		#smallLintVariableNotDefined.
		
		"Possible Bugs"
		#smallLintAddRemoveDependents.
		#smallLintAbstractClass.
		#smallLintClassInstVarNotInitialized.
		#smallLintEmptyExceptionHandler.
		#smallLintDefinesEqualNotHash.
		#smallLintFloatEqualityComparison.
		#smallLintLiteralArrayContainsComma.
		#smallLintLiteralArrayContainsSuspiciousTrueFalseOrNil.
		#smallLintCollectionCopyEmpty.
		#smallLintReturnsIfTrue.
		#smallLintReturnInEnsure.
		#smallLintTempsReadBeforeWritten.
		#smallLintThreeElementPoint.
		#smallLintUncommonMessageSend.
		#smallLintUnconditionalRecursion.
		#smallLintUnpackagedCode.
		#smallLintEqualNotUsed.
		#smallLintFileBlocks.
		#smallLintUsesAdd.
		
		"Code-Style"
		#smallLintDefinesEqualNotHash.
		#smallLintEqualNotUsed.
		#smallLintEqualsTrue.
		#smallLintExtraBlock.
		#smallLintJustSendsSuper.
		#smallLintMethodModifierOverride.
		#smallLintReturnsIfTrue.
		#smallLintWhileTrue.
		
		"Intention revealing"
		#smallLintClassVariableCapitalization.
		#smallLintContains.
		#smallLintDetectContains.
		#smallLintLiteralArrayCharacters.
		#smallLintMissingSubclassResponsibility.
		#smallLintSearchingLiteral.
		#smallLintSizeCheck.
		#smallLintTemporaryVariableCapitalization.
		#smallLintCollectSelectNotUsed.
		
		"Spelling"
		#smallLintClassCategoriesSpelling.
		#smallLintClassVariableNamesSpelling.

		"Unnecessary code"
		#smallLintAssignmentWithoutEffect.
		#smallLintEndTrueFalse.
		#smallLintJustSendsSuper.
		#smallLintEqualsTrue.
		#smallLintExtraBlock.
		#smallLintUnreferencedVariables.
		
		"Miscellaneous"
		#smallLintAsOrderedCollectionNotNeeded.
		#smallLintAssignmentInBlock.
		#classNameInSelector:.
		#smallLintExcessiveInheritance.
		#smallLintIfTrueBlocks.
		#smallLintStringConcatenation.
		#smallLintUnclassifiedMethods.
		#smallLintUnoptimizedAndOr.
		#smallLintUnoptimizedToDo.
		#smallLintYourselfNotUsed.
	}