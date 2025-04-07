# VideoMetadataGuiDeDup

> 🎥 A GUI-based application for video metadata analysis and duplication filtering. Filters videos with the same duration and exports metadata.

## Features
- Drag-and-drop folder selection
- Display video metadata (duration, codec, resolution, etc.)
- Filter videos with the same duration
- Compare video data (simple byte-level comparison)
- Export metadata and comparison results to a .txt file
- Double-click to open file location
- Language support: Turkish / English (switchable in the GUI)

## Requirements
- **FFmpeg** (for metadata extraction)
- **Qt (5 or 6)** (for GUI)
- **CMake** (to build the project)

## Installation

1. Install FFmpeg:
   ```bash
   sudo apt install ffmpeg
   ```

2. Install Qt (example with Qt6):
   ```bash
   sudo apt install qt6-base-dev
   ```

3. Clone the repository:
   ```bash
   git clone https://github.com/Kristomolog/VideoMetadataGuiDeDup.git
   cd VideoMetadataGuiDeDup
   ```

4. Create build directory and compile:
   ```bash
   mkdir build
   cd build
   cmake ..
   make
   ```

5. Run the application:
   ```bash
   ./VideoMetadataGuiDeDup
   ```

## Contribution
You can contribute by sending pull requests or creating issues.

## License
This project is licensed under the [MIT License](LICENSE).

---
📌 [Türkçe Sürüm](README.md)