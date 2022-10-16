extends AudioStreamPlayer
class_name AudioQueuePlayer

var queue := []

func _ready():
	connect("finished", self, "play")

func play(pos: float = 0) -> void:
	if not len(queue):
		return

	stream = queue.pop_front()
	.play(pos)

func add(audio: AudioStream) -> void:
	queue.append(audio)
