enum declaration
enumDecl
	"self initialize"

	| errors dictionary |
	dictionary := Dictionary new.
	errors := self parseSource.
	errors do: [ :e | dictionary at: e name asSymbol put: e value ].
	^ dictionary.