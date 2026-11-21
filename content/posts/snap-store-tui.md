+++
title = "snap-store-tui: Browse the Snap Store From Your Terminal"
description = "A TUI for searching, installing, and managing snaps."
date = "2026-01-25"
tags = ["python", "linux", "snaps", "projects"]
+++

The existing official workflow for navigating the snap store requires using a GUI (App Center) or bare `snap` commands. I created the snap-store-tui project to provide a middle ground.

[snap-store-tui](https://github.com/alexdlukens/snap-store-tui) is a terminal UI for navigating the [Snap Store](https://snapcraft.io/), built with the [Textual](https://github.com/textualize/textual/) framework.

The TUI covers the day-to-day store workflow without leaving the terminal:

- Browse and search snaps against the Snap Store API
- View snap details, including channel listings
- Install and uninstall snaps directly from the UI
- See what's installed on your machine
- Open a snap's store page in your browser

In order to interact with the Snap daemon, Snap Store, I created a Python library [snap-python](https://pypi.org/project/snap-python/). This was built with the help of generated Pydantic models from the JSON schemas in the [Snap Store API docs](https://api.snapcraft.io/docs/). I used `datamodel-codegen` to generate the Pydantic models from the schemas. 

The snap app as published on the Snap Store is very far behind GitHub, as I make use of the super-privileged `snapd-control` plug, which requires manual review + approvals.

[Find it on GitHub](https://github.com/alexdlukens/snap-store-tui).

Cheers!
