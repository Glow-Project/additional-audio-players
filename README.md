# additional-audio-players

- AudioQueuePlayer: Add songs to the queue an let them be played back one by one
- AudioTreePlayer: Play multiple audios simultaneously 

## usage

```gdscript
$AudioQueuePlayer.add(<my-audio-stream>)
$AudioQueuePlayer.play()

$AudioTreePlayer.play_async(<my-audio-stream>)
```

