local:
	@echo "Installing termclock (local dev)..."
	@uv pip install -e .
	@echo "Done."

global: build
	@echo "Installing termclock system-wide..."
	@sudo cp dist/termclock /usr/local/bin/termclock
	@sudo ln -s /usr/local/bin/termclock /usr/local/bin/clk
	@echo "Done. You can now run 'termclock' from anywhere."

bump:
	@./scripts/bump.sh

build: bump
	@echo "Building standalone executable..."
	@uv run pyinstaller --onefile --name termclock src/app.py --collect-all textual --hidden-import=tui --hidden-import=tui.stopwatch --hidden-import=tui.countdown --add-data "src/tui/theme.tcss:tui"
	@echo "Done. Executable is at dist/termclock"

clean:
	@rm -rf build dist *.spec __pycache__
	@echo "Cleaned build artifacts."

uninstall:
	@echo "Uninstalling termclock..."
	-@sudo rm /usr/local/bin/termclock
	-@sudo rm /usr/local/bin/clk
	@echo "Done."

.PHONY: local global build bump clean uninstall