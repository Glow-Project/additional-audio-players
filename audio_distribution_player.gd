extends Node
class_name AudioDistributor

@export var audio_player_paths: Array[NodePath] = []
@export var stream: AudioStream

var audio_players: Array = []

func _ready() -> void:
    for path in audio_player_paths:
        audio_players.append(get_node(path))

func play(pos: float = 0) -> void:
    for player in audio_players:
        player.stream = stream
        player.play(pos)

func stop() -> void:
    for player in audio_players:
        player.stop()
