local:
	@echo "Installing timer (local dev)..."
	@uv pip install -e .
	@echo "Done."

global:
	@echo "Installing timer system-wide..."
	@uv tool install --force /home/rehan/Projects/timer
	@echo "Done. You can now run 'timer' from anywhere."

.PHONY: local global