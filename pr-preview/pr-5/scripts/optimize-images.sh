#!/bin/bash
# Image optimization script for Jekyll site
# Requires: sips (macOS built-in), optionally cwebp for WebP conversion

set -e
shopt -s nullglob

ASSETS_DIR="$(dirname "$0")/../assets"
MAX_WIDTH=1600
JPEG_QUALITY=70

echo "Optimizing images in $ASSETS_DIR..."

# Optimize JPEG files
for file in "$ASSETS_DIR"/*.jpeg "$ASSETS_DIR"/*.jpg; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "Processing: $filename"

        # Get current width
        width=$(sips -g pixelWidth "$file" | tail -1 | awk '{print $2}')

        if [ "$width" -gt "$MAX_WIDTH" ]; then
            echo "  Resizing from ${width}px to ${MAX_WIDTH}px"
            sips -Z $MAX_WIDTH --setProperty formatOptions $JPEG_QUALITY "$file" --out "$file"
        else
            echo "  Already optimized (${width}px)"
        fi
    fi
done

# Optimize PNG files
for file in "$ASSETS_DIR"/*.png; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "Processing: $filename"

        # Get current width
        width=$(sips -g pixelWidth "$file" | tail -1 | awk '{print $2}')

        if [ "$width" -gt "$MAX_WIDTH" ]; then
            echo "  Resizing from ${width}px to ${MAX_WIDTH}px"
            sips -Z $MAX_WIDTH "$file" --out "$file"
        else
            echo "  Already optimized (${width}px)"
        fi
    fi
done

# WebP conversion (if cwebp is available)
if command -v cwebp &> /dev/null; then
    echo ""
    echo "Converting to WebP format..."
    for file in "$ASSETS_DIR"/*.jpeg "$ASSETS_DIR"/*.jpg "$ASSETS_DIR"/*.png; do
        if [ -f "$file" ]; then
            webp_file="${file%.*}.webp"
            if [ ! -f "$webp_file" ]; then
                echo "  Creating: $(basename "$webp_file")"
                cwebp -q 80 "$file" -o "$webp_file"
            fi
        fi
    done
else
    echo ""
    echo "Note: Install webp (brew install webp) for WebP conversion"
fi

echo ""
echo "Done! Image optimization complete."
