filenames
autogeneratedMethodName
	"Answers the name/selector of the autogenerated init method. Examples of names are 'initVariablesMacOS32', 'initVariablesunix32', etc "
	^ ('initVariables', (self platformName copyWithout: Character space) , (self wordSize * 8) asString)
		