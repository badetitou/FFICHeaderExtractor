tests
testLookupInitMethodForCurrentPlatform
	self testingSharedPool 
		reset;
		extractAndStoreHeadersInformation.
	self testingSharedPool class compile: 'initVariablesWhatever32
		<platformName: ''Whatever'' wordSize: 4>
	EACCES := 13.
	EINVAL := 22.
	SIGKILL := 9.
	SIGTERM := 15.
	"WHATEVER is UNDEFINED for this platform"
	' classified: 'autogenerated by FFICHeaderExtractor'.
	self assert: self testingSharedPool cHeaderExtractor autogeneratedMethodName asString equals: self testingSharedPool lookupInitMethodForCurrentPlatform asString. 
	