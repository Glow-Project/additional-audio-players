extends AudioStreamPlayer
class_name AudioTreePlayer

var is_root := true

func play_async(audio: AudioStream, position: float = 0.0) -> AudioTreePlayer:
	if not is_root:
		return null

	var child: AudioTreePlayer = self.duplicate()
	for cc in child.get_children():
		child.remove_child(cc)
	child.is_root = false
	child.stream = audio
	child.play(position)
	add_child(child)

	return child

func play(position: float = 0.0) -> void:
	if is_root:
		return

	.play(position)
	yield(self, "finished")
	queue_free()

