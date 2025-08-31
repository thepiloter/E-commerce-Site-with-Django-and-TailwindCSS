#!/bin/bash

echo "Setting up Django E-commerce Site..."

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python -m venv venv
fi

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# Install Node.js dependencies
echo "Installing Node.js dependencies..."
npm install

# Run migrations
echo "Running migrations..."
python manage.py makemigrations
python manage.py migrate

# Build TailwindCSS
echo "Building TailwindCSS..."
npm run watch:css &
TAILWIND_PID=$!

# Create superuser if it doesn't exist
echo "Creating superuser (admin/admin123)..."
echo "from django.contrib.auth.models import User; User.objects.filter(username='admin').exists() or User.objects.create_superuser('admin', 'admin@example.com', 'admin123')" | python manage.py shell

# Kill TailwindCSS watch process
kill $TAILWIND_PID 2>/dev/null || true

echo "Setup complete!"
echo "To start the development server, run: python manage.py runserver"
echo "To start TailwindCSS watch mode, run: npm run watch:css"
