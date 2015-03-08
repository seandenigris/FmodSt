examples
exampleSmalltalkStylePlaying: file
	"file - anAbstractFileReference or full path string"
	
	| system sound channel |
	system := FmodSystem new.
	sound := system newSoundFromFile: file asFileReference.
	channel := sound play.
	[ channel isPlaying ] whileTrue: [ 100 milliSeconds asDelay wait ].
	sound release.
	system release.