#!/bin/bash

echo "🏦 Bank Reconciliation System - Quick Deploy"
echo "============================================"
echo ""

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker not found. Installing Docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    rm get-docker.sh
fi

# Check if docker-compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "❌ docker-compose not found. Installing..."
    sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi

echo "✅ Docker and docker-compose are ready"
echo ""

# Stop existing container
echo "🛑 Stopping existing containers..."
docker-compose down

# Build and start
echo "🚀 Building and starting application..."
docker-compose up -d --build

# Wait for container to be healthy
echo "⏳ Waiting for application to be ready..."
sleep 5

# Check health
if curl -s http://localhost:8000/health > /dev/null; then
    echo ""
    echo "✅ SUCCESS! Application is running"
    echo ""
    echo "📍 Access the application at:"
    echo "   http://localhost:8000"
    echo ""
    echo "🔍 View logs: docker-compose logs -f"
    echo "🛑 Stop: docker-compose down"
    echo "🔄 Restart: docker-compose restart"
else
    echo ""
    echo "⚠️  Application started but health check failed"
    echo "Check logs: docker-compose logs"
fi

echo ""
echo "Happy reconciling! 🎉"
