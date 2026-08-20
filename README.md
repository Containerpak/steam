# Steam (cpak)

## Installation

```bash
cpak install github.com/containerpak/steam
```

## Usage

Start it from its icon in the application menu or by running:

```bash
cpak run github.com/containerpak/steam steam-cpak
```

## Optional addons

Steam supports optional cpak addons for MangoHud, Gamescope, GameMode,
GE-Proton and ProtoSoda. For example:

```bash
cpak addon enable github.com/containerpak/steam github.com/containerpak/mangohud
cpak addon enable github.com/containerpak/steam github.com/containerpak/protosoda
```

Use `mangohud %command%`, `gamescope -- %command%` or
`gamemoderun %command%` in a game's launch options. Compatibility tools appear
in Steam after restarting the client. Steam keeps nested addon paths available
when a game enters pressure-vessel, without copying addon files into the user's
Steam directory.
