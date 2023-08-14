extends Node
class_name AudioTreePlayer

@export var audio_players = []
@export var stream: AudioStream

func play(pos: float = 0) -> void:
    for player in audio_players:
        player.stream = stream
        player.play(pos)

func stop() -> void:
    for player in audio_players:
        player.stop()
