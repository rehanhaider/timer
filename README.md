# Timer CLI

A powerful and visually stunning terminal-based timer application built with [Textual](https://textual.textualize.io/) and [Typer](https://typer.tiangolo.com/) which has:


- **TUI Interface**: Beautiful, responsive terminal user interface with a premium feel.
- **Notifications**: Visual and audio feedback (bell) when a countdown completes.

## Features

- **Stopwatch**: Precise stopwatch with centisecond resolution.
- **Countdown**: Configurable countdown timer with support for seconds, minutes, and hours.


## Installation

### Prerequisites

- [uv](https://github.com/astral-sh/uv) installed on your system.

### Global Installation (Recommended)

To install `timer` as a system-wide utility:

```bash
make global
```

This will make the `timer` command available from anywhere in your terminal.

### Local Development

To install in editable mode for development:

```bash
make local
```

## Usage

### Stopwatch

Start a stopwatch to track elapsed time:

```bash
timer sw
```

**Controls:**
- `Space`: Start/Stop
- `r`: Reset
- `q`: Quit

### Countdown Timer

Start a countdown for a specific duration:

```bash
timer cd 5 m    # 5 minutes (default)
timer cd 60 s   # 60 seconds
timer cd 1 h    # 1 hour
```

**Controls:**
- `Space`: Pause/Resume
- `q`: Quit

## Project Structure

- `src/app.py`: CLI entry point using Typer.
- `src/tui/tui.py`: Core TUI logic and screens using Textual.
- `src/tui/__init__.py`: Package exports for clean imports.
- `pyproject.toml`: Project configuration and dependencies.
- `Makefile`: Convenient commands for installation and management.

## Uninstallation

To remove the global installation:

```bash
make uninstall
```
