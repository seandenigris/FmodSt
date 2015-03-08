Example (must have FMOD installed in image directory):
| sound mp3File |
mp3File := FileLocator imageDirectory / 'train whistle.mp3'.
sound := FmodSound fromFile: mp3File.
[ sound play ] fork.