# Sakura

A terminal-based anime player and downloader. Sakura adds an interactive TUI wrapper using [gum](https://github.com/charmbracelet/gum).

## Contents

- **sakura** – Interactive wrapper (requires [gum](https://github.com/charmbracelet/gum)). Provides a menu-driven interface to search, watch, download, and manage anime.
- **sakura-cli** – Core CLI. Can be used standalone for watching, downloading, continuing from history, and playing downloaded videos locally.

## Requirements

- **sakura (TUI):** `gum`, and `sakura-cli` in the same directory
- **sakura-cli:** `curl`, `sed`, `grep`, `fzf`; a video player (e.g. `mpv`, VLC, or IINA on macOS); optionally `rofi`, `ani-skip`, `yt-dlp`/`ffmpeg`/`aria2c` for downloads

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/YOUR_GITHUB_USER/sakura.git
   cd sakura
   ```
2. Make scripts executable:
   ```bash
   chmod +x sakura sakura-cli
   ```
3. Install [gum](https://github.com/charmbracelet/gum) if you want to use the `sakura` TUI:
   ```bash
   # macOS
   brew install gum
   # Or see gum’s README for other platforms
   ```

## Usage

- **Interactive TUI:** run `./sakura` (from the repo directory, or ensure `sakura-cli` is next to `sakura`).
- **CLI only:** run `./sakura-cli [options] [query]`. Use `./sakura-cli --help` for options.
- **Play downloads:** run `./sakura-cli -L` or `./sakura-cli --local` to list and play downloaded videos (optional: add `--vlc` to use VLC). In the TUI, use **Play Downloads** from the main menu.

## Configuration

sakura-cli respects these environment variables:

- `SAKURA_CLI_MODE` – `sub` or `dub`
- `SAKURA_CLI_PLAYER` – e.g. `mpv`, `vlc`
- `SAKURA_CLI_QUALITY` – e.g. `best`, `1080p`, `720p`
- `SAKURA_CLI_DOWNLOAD_DIR` – directory for downloads and for `--local` (default: current directory)
- `SAKURA_CLI_HIST_DIR` – directory for watch history (default: `$XDG_STATE_HOME/sakura-cli` or `~/.local/state/sakura-cli`)
- `SAKURA_CLI_SKIP_INTRO` – set to `1` to use ani-skip (mpv only)
- See `./sakura-cli --help` for more.

## License

GPL-3.0. See [LICENSE](LICENSE).
