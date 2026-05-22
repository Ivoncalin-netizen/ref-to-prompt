Ref-to-Prompt Designer
======================

HOW TO USE
----------
1. Double-click index.html to open in browser (basic use, no sharing)

HOW TO SHARE WITH TEAMMATES
----------------------------
Windows:
  Double-click start-server.bat
  → Terminal shows your network URL, e.g. http://192.168.1.5:8080
  → Share this URL with colleagues on the same WiFi

Mac / Linux:
  Open Terminal in this folder
  Run: bash start-server.sh
  → Copy the Network URL shown and share with colleagues

Requirements: Python 3 (usually pre-installed on Mac/Linux)
Download Python: https://python.org

SUBJECT TYPES
-------------
ADD 人物   → Prompt tuned for a single human subject (face identity locked)
ADD 動物   → Prompt tuned for animal subject (fur, markings preserved)
ADD Image  → Flexible — handles person or animal from identity image
ADD Product → Prompt tuned for product shots (shape, color, branding preserved)

OUTPUT FORMATS
--------------
Collage  → Full Y2K pink multi-frame collage layout
Portrait → Single clean portrait/product shot
I2V Motion → Animation prompt for video generation tools

COMPATIBLE AI TOOLS
-------------------
- Stable Diffusion / ComfyUI (with IP-Adapter for best identity lock)
- Midjourney v6 (use --cref for identity, --sref for style)
- DALL-E 3 / GPT-4o (upload both images + paste prompt)
- Flux (Redux workflow)
