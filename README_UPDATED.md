# E-Commerce Site with Django & TailwindCSS

This repository contains the code for a functional e-commerce website built with Django and styled using TailwindCSS as shown in my Tutorial [Video on Youtube](https://youtu.be/GUaUVhEBgyk):

## Features

- **Django & TailwindCSS Integration**: Set up Django with TailwindCSS for easy styling.
- **Product Catalog**: Manage products efficiently, with the option to sort by categories.
- **Shopping Cart**: Implement a dynamic cart allowing users to add and remove items.
- **Checkout Process**: Provide a checkout experience, including order confirmation.
- **Order Management**: Administer customer orders from the backend.
- **Admin Interface**: Use Django's admin panel for management of products, categories, and orders.
- **Docker Support**: Fully containerized application with Docker and docker-compose.
- **Database Flexibility**: SQLite for development, PostgreSQL for production/Docker.

## 🚀 Quick Start

### Option 1: Local Development

#### Prerequisites
- Python 3.8+
- Node.js 14+
- npm or yarn

#### Setup (Windows)
```bash
# Run the setup script
setup.bat
```

#### Setup (Linux/macOS)
```bash
# Make the script executable
chmod +x setup.sh
# Run the setup script
./setup.sh
```

#### Manual Setup
```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# Windows:
venv\Scripts\activate
# Linux/macOS:
source venv/bin/activate

# Install Python dependencies
pip install -r requirements.txt

# Install Node.js dependencies
npm install

# Run migrations
python manage.py migrate

# Create superuser
python manage.py createsuperuser

# Build TailwindCSS (in another terminal)
npm run watch:css

# Start development server
python manage.py runserver
```

### Option 2: Docker

#### Prerequisites
- Docker
- Docker Compose

#### Setup
```bash
# Build and run with docker-compose
docker-compose up --build

# Access the application at http://localhost:8000
```

The Docker setup includes:
- Django application container
- PostgreSQL database container
- Automatic migrations
- TailwindCSS compilation

## 📂 Project Structure

```
ecommerce-site/
├── cart/                   # Shopping cart app
├── ecommercesite/         # Main Django project
├── orders/                # Order management app
├── products/              # Product catalog app
├── static/                # Static files (CSS, JS, images)
├── templates/             # HTML templates
├── mediafiles/            # User uploaded files
├── requirements.txt       # Python dependencies
├── package.json          # Node.js dependencies
├── tailwind.config.js    # TailwindCSS configuration
├── Dockerfile            # Docker configuration
├── docker-compose.yml    # Docker Compose configuration
└── manage.py             # Django management script
```

## 🔧 Configuration

### Environment Variables (Docker)
- `POSTGRES_DB`: Database name (default: ecommerce)
- `POSTGRES_USER`: Database user (default: postgres)
- `POSTGRES_PASSWORD`: Database password (default: postgres)
- `POSTGRES_HOST`: Database host (default: db)
- `POSTGRES_PORT`: Database port (default: 5432)

### Admin Access
- **Username**: admin
- **Password**: admin123
- **URL**: http://localhost:8000/admin/

## 🎯 Key Features Analysis

### ✅ Self-Contained & End-to-End
- **Complete E-commerce Flow**: Product browsing → Cart → Checkout → Order management
- **No External Dependencies**: All functionality works without external APIs or services
- **Database Included**: Uses SQLite by default, no external database setup required
- **Admin Interface**: Built-in Django admin for content management
- **Static Files**: All CSS/JS files included and properly configured

### ✅ Docker Ready
- **Dockerfile**: Optimized multi-stage build
- **Docker Compose**: Full stack with database
- **Environment Configuration**: Supports both development and production
- **Database Flexibility**: SQLite for development, PostgreSQL for Docker
- **Static Files**: Properly handled in containerized environment

### ✅ No API Keys Required
- **Pure Django**: No external payment gateways or APIs
- **Local Authentication**: Uses Django's built-in auth system
- **File Storage**: Local file system for media files
- **No Third-party Services**: Completely self-contained

## 🛠 Development Workflow

1. **Start TailwindCSS Watch Mode**:
   ```bash
   npm run watch:css
   ```

2. **Start Django Development Server**:
   ```bash
   python manage.py runserver
   ```

3. **Access the Application**:
   - Main site: http://localhost:8000/
   - Admin panel: http://localhost:8000/admin/

## 📦 Production Deployment

For production deployment with Docker:

```bash
# Build production image
docker build -t ecommerce-app .

# Run with production settings
docker run -p 8000:8000 \
  -e POSTGRES_DB=ecommerce \
  -e POSTGRES_USER=your_user \
  -e POSTGRES_PASSWORD=your_password \
  -e POSTGRES_HOST=your_db_host \
  ecommerce-app
```

## Tutorial:

[![Watch the Tutorial](https://img.youtube.com/vi/GUaUVhEBgyk/0.jpg)](https://www.youtube.com/watch?v=GUaUVhEBgyk)

## Support

If you found this project helpful, consider becoming a patron on my Patreon:

[![Support me on Patreon](https://img.shields.io/badge/Support%20me%20on-Patreon-orange.svg)](https://www.patreon.com/PikoCanFly)

Your contributions will help me continue creating helpful content. Thank you for your support!

## Contributing

This project was made to help spread knowledge. If you'd like to contribute, feel free to fork the repository, make your changes, and submit a pull request.
