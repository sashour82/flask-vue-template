# -------------------------------
# Flask + Vue Project Setup Script
# For Windows (PowerShell)
# -------------------------------

Write-Host "📁 Setting up Python virtual environment..."
python -m venv venv

Write-Host "✅ Virtual environment created."
Write-Host "🔄 Activating virtual environment..."
.\venv\Scripts\Activate.ps1

Write-Host "📦 Installing Python dependencies..."
pip install --upgrade pip
pip install -r backend\requirements.txt

Write-Host "✅ Python dependencies installed."

Write-Host "🔄 Running database migrations..."
cd backend
flask db upgrade
cd ..

Write-Host "📁 Installing frontend dependencies..."
cd frontend
npm install

Write-Host "✅ Frontend dependencies installed."
cd ..

Write-Host "🚀 Setup complete. You can now:"
Write-Host "👉 Run Flask backend:    python backend/main.py"
Write-Host "👉 Run Vue frontend:     cd frontend && npm run dev"
