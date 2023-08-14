extends AudioStreamPlayer
class_name AudioQueuePlayer

@export var queue := []

func _ready():
	connect("finished", play)

func play(pos: float = 0) -> void:
	if not len(queue):
		return

	stream = queue.pop_front()
	super.play(pos)

func add(audio: AudioStream) -> void:
	queue.append(audio)
