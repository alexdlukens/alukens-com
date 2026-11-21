+++
title = "local-ai-search-provider: A GNOME Shell Extension for querying AI"
description = "Decode QR codes from an image, a URL, or a live webcam — all inside the terminal."
date = "2026-11-20"
tags = ["linux", "ai", "projects"]
+++
 
> This project was implemented fully with Generative AI, with human input for feature proposals + developement
>
> Notably, the Deepseek V4.1 Flash 1017 model, served from [Opencode Go](https://opencode.ai/go)

[local-ai-search-provider](https://github.com/alexdlukens/local-ai-search-provider) is a GNOME extension that adds integration for querying AI from the GNOME shell search (Super-key menu) 

## Overview

- Allows configuration of an OpenAI compatible endpoint (local or cloud). Optional API key authentication
- Configure model + system prompt
- Small set of tools that can be used for searching the web
- Streams responses inline in the GNOME Shell search interface, or in a dedicated `AI Chats` application

In my case, I wanted a GNOME Shell extension that I could use with Unsloth Studio's local API endpoint. I used the [Gemma4 E2B QAT](https://huggingface.co/unsloth/gemma-4-E2B-it-qat-GGUF) model for the fast model load, prompt processing, and decode performance

