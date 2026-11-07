# Book Intelligence Studio v0.2.0

ਇਹ Windows desktop application ਦਾ source prototype ਹੈ। ਇਹ final commercial-grade product ਨਹੀਂ ਅਤੇ ਇਸ ZIP ਵਿੱਚ precompiled Windows `.exe` ਨਹੀਂ ਹੈ।

## ਇਸ build ਵਿੱਚ
- PySide6 desktop UI
- Project database (SQLite)
- Chapters ਅਤੇ Story Bible notes
- PDF / EPUB / DOCX / TXT / Markdown ingestion
- Text passage indexing ਅਤੇ full-text search
- Ollama local AI review/research
- Optional OpenAI API review/research
- Review history
- Markdown manuscript export
- AI output original chapter ਨੂੰ overwrite ਨਹੀਂ ਕਰਦਾ

## Install / Run (Windows 10/11, 64-bit)
1. Python 3.10+ install ਕਰੋ ਅਤੇ installer ਵਿੱਚ “Add Python to PATH” ਚੁਣੋ।
2. ZIP extract ਕਰੋ।
3. `run_windows.bat` double-click ਕਰੋ। ਪਹਿਲੀ ਵਾਰ packages download ਹੋਣਗੇ।
4. Project ਬਣਾਓ ਅਤੇ documents import ਕਰੋ।

## Local AI
1. Ollama install ਕਰੋ: https://ollama.com/
2. Terminal ਵਿੱਚ ਚਲਾਓ: `ollama pull qwen2.5:1.5b`
3. Ollama service ਚੱਲਦੀ ਹੋਵੇ ਤਾਂ app ਵਿੱਚ Ollama (local) ਚੁਣੋ।

8GB RAM ਉੱਤੇ 1.5B quantized model ਨਾਲ ਸ਼ੁਰੂ ਕਰੋ। ਵੱਡੇ models ਹੌਲੇ ਹੋ ਸਕਦੇ ਹਨ ਜਾਂ memory pressure ਪੈਦਾ ਕਰ ਸਕਦੇ ਹਨ।

## Cloud AI privacy / cost
OpenAI API optional ਹੈ। Windows Environment Variables ਵਿੱਚ `OPENAI_API_KEY` set ਕਰਨਾ ਪਵੇਗਾ। API billing ChatGPT subscription ਤੋਂ ਵੱਖਰੀ ਹੁੰਦੀ ਹੈ। Cloud mode ਵਿੱਚ chapter text, prompt ਅਤੇ selected context provider ਨੂੰ ਭੇਜੇ ਜਾਂਦੇ ਹਨ। Sensitive unpublished writing cloud ਨੂੰ ਨਾ ਭੇਜੋ ਜੇ ਤੁਸੀਂ ਇਸਦੀ ਮਨਜ਼ੂਰੀ ਨਹੀਂ ਦਿੰਦੇ।

## Build EXE / Installer
1. `build_windows.bat` ਚਲਾਓ। Output `dist\BookIntelligenceStudio\` ਵਿੱਚ ਆਵੇਗਾ।
2. Inno Setup install ਕਰੋ: https://jrsoftware.org/isinfo.php
3. `installer\build_installer.bat` ਚਲਾਓ।
4. Setup file `installer\Output\BookIntelligenceStudio-Setup-0.2.0.exe` ਵਿੱਚ ਬਣੇਗੀ।

ਇਸ environment ਵਿੱਚ native Windows executable compile ਜਾਂ test ਨਹੀਂ ਕੀਤਾ ਗਿਆ। Windows machine ਉੱਤੇ build ਅਤੇ test ਲਾਜ਼ਮੀ ਹੈ।

## Important limitations
- Scanned PDF OCR ਨਹੀਂ ਹੈ; PDF ਵਿੱਚ selectable text ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ।
- EPUB section locator available ਹੈ, ਪਰ ਹਰ book ਵਿੱਚ chapter mapping perfect ਨਹੀਂ।
- Search is lexical full-text search, semantic/vector retrieval ਨਹੀਂ।
- Web research/crawler ਇਸ build ਵਿੱਚ ਨਹੀਂ; online sources ਨੂੰ legally obtain ਕਰਕੇ files ਵਜੋਂ import ਕਰੋ।
- AI-generated citations ਨੂੰ verified citations ਨਾ ਮੰਨੋ। Imported source locator ਨਾਲ ਖੁਦ verify ਕਰੋ।
- Spiritual traditions are not interchangeable. Sikh, Hindu/Vedantic, Buddhist, Jain and other traditions need tradition-specific source context.
- No live novelWriter / Kindling sync yet. Markdown export/import is the safe interchange baseline.
- DOCX/EPUB publishing, OCR, knowledge graph, claim-level citation verification and semantic retrieval are planned, not implemented.

## One-click Windows build through GitHub Actions
1. Create a new GitHub repository and upload the contents of this folder.
2. Open the repository's **Actions** tab and run **Build Windows installer** using **Run workflow**.
3. When the workflow completes, open its run and download the artifact named `BookIntelligenceStudio-Windows-Setup`.
4. The artifact contains `BookIntelligenceStudio-Setup-0.2.0.exe`.

This workflow builds on a real Windows runner. It does not mean the installer has already been built or tested by the author. Review the workflow logs and test the installer on a Windows PC before relying on it.
