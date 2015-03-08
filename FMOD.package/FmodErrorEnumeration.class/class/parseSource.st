private
parseSource
	"self parseSource"

	| identifier parser source space constant comment trailingComment constants currentValue assignment constantbeforeLast lastConstant |
	currentValue := 0.
	source := 'error_enum.txt' asFileReference readStreamDo: [ :e | e contents ].
	identifier := (#word asParser / $_ asParser) plus flatten.
	space := #space asParser plus optional.
	comment := '/*' asParser, '*/' asParser negate star flatten trim, '*/' asParser ==> #second.
	assignment := (space, $= asParser, space, #digit asParser plus flatten) ==> #last.
	constant := identifier, assignment optional, space.
	constant := constant ==> [ :nodes | | isInitialized result |
		isInitialized := nodes second isNil not.
		isInitialized ifTrue: [ currentValue := nodes second asNumber ].
		result := { nodes first. currentValue }.
		currentValue := currentValue + 1.
		result ].
	trailingComment := space, comment, space ==> #second.
	constantbeforeLast := constant, $, asParser, trailingComment ==> [ :nodes | 
		FmodError name: nodes first first value: nodes first second description: nodes third ].
	lastConstant := constant, trailingComment ==> [ :nodes | 
			FmodError name: nodes first first value: nodes first second description: nodes second. ].
	constants := constantbeforeLast star, lastConstant ==> [ :nodes | nodes first copyWith: nodes second ].
	parser := 'typedef enum' asParser, space, 
		${ asParser, space,
		constants,
		$} asParser, space, identifier, $; asParser ==> #fifth.
	^ parser parse: source.