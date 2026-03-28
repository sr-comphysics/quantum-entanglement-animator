.PHONY: install-all run-all

# ==========================================
# 🛠️ SETUP BOTH ENVIRONMENTS
# ==========================================
install-all:
	@echo "Installing Frontend Dependencies..."
	cd frontend && npm install
	@echo "Installing Backend Dependencies (Ensure your venv is activated first!)..."
	cd backend && pip install -r requirements.txt
	@echo "✅ All dependencies installed!"

# ==========================================
# 🚀 RUN BOTH SERVERS SIMULTANEOUSLY
# ==========================================
run-all:
	@echo "Starting Backend (FastAPI) and Frontend (React)..."
	@echo "To stop both servers, press CTRL+C"
	@cd backend && python -m uvicorn app.main:app --reload --host 0.0.0.0 --port 8000 & \
	cd frontend && npm run dev
