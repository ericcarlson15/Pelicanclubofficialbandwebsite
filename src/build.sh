#!/bin/bash

echo "🎵 Building Pelican Club OS..."
echo ""

# Install dependencies
echo "📦 Installing dependencies..."
npm install

echo ""
echo "🔨 Building site..."
npm run build

echo ""
echo "✅ Done! Your dist folder is ready!"
echo ""
echo "Opening dist folder..."
open dist

echo ""
echo "Now drag the dist folder to https://app.netlify.com/drop"
