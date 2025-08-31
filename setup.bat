@echo off
echo Setting up Django E-commerce Site...

REM Check if virtual environment exists
if not exist "venv" (
    echo Creating virtual environment...
    python -m venv venv
)

REM Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate.bat

REM Install Python dependencies
echo Installing Python dependencies...
pip install -r requirements.txt

REM Install Node.js dependencies
echo Installing Node.js dependencies...
npm install

REM Run migrations
echo Running migrations...
python manage.py makemigrations
python manage.py migrate

REM Build TailwindCSS
echo Building TailwindCSS...
start /B npm run watch:css
timeout /t 5 /nobreak >nul

REM Create superuser if it doesn't exist
echo Creating superuser (admin/admin123)...
echo from django.contrib.auth.models import User; User.objects.filter(username='admin').exists() or User.objects.create_superuser('admin', 'admin@example.com', 'admin123') | python manage.py shell

echo Setup complete!
echo To start the development server, run: python manage.py runserver
echo To start TailwindCSS watch mode, run: npm run watch:css
pause
