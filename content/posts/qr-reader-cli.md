+++
title = "qr-reader-cli: A QR Code Reader for the Terminal"
description = "Decode QR codes from an image, a URL, or a live webcam — all inside the terminal."
date = "2026-08-16"
tags = ["python", "linux", "projects"]
+++

[qr-reader-cli](https://github.com/alexdlukens/qr-reader-cli) is a Python CLI that decodes QR codes from an image file, a URL, or a webcam — no phone required.

```bash
# Image file with a single QR code
qr-cli -i ./ticket.png

# Multiple codes in one image
qr-cli -i ./batch.jpg --many-ok

# Save the decoded data as JSON
qr-cli -i ./ticket.png -o result.json

# Live webcam reading, straight from the terminal
qr-cli
```

The engine is OpenCV's `QRCodeDetector`, with an optional WeChat detector (`--use-wechat`) for harder-to-decode codes. On the terminal side it leans on `rich` and `rich_pixels` to render the live webcam feed as pixels right in the console — no separate window. If you have multiple webcams plugged in, `questionary` pops an interactive picker. Decoded output goes to stdout, or as JSON to a file when a QR contains file data.

It's packaged as the `qr-cli` snap (strict confinement, `camera` and `home` plugs — it even checks the camera interface is connected via `snapctl` before opening the webcam), with a Flatpak manifest alongside. MIT licensed on GitHub — [issues and PRs welcome](https://github.com/alexdlukens/qr-reader-cli).
