#!/bin/bash

declare -A files

traverse() {
	for file in "$1"/*; do
		if [ -d "$file" ]; then
			traverse "$file"
		else
			ext="${file##*.}"
			files[$ext]=$((files[$ext] + 1))
		fi
	done
}

cleanup() {
	echo "Cleaning up..."
	rm -f /tmp/file_count.txt
}

trap cleanup EXIT

echo "Starting file count..."

traverse "${1:-$PWD}"

{
	echo "File extensions counts:"
	for ext in "${!files[@]}"; do
		echo "$ext: ${files[$ext]}"
	done
} > /tmp/file_count.txt

echo "File counts have been written to /tmp/file_count.txt"

cat << EOF
Script completed. Here's a summary:
Total number of extensions found: ${#files[@]}
Most common extension: $(sort -rn /tmp/file_count.txt | head -n 1)
EOF










