# Architecture decisions — v0.2

## Product principles
1. Source provenance is first-class: every passage belongs to an imported source and retains a locator where extraction supports one.
2. Epistemic separation: empirical fact, scholarly interpretation, tradition-specific belief, hypothesis and speculation are labelled distinctly.
3. Human approval: AI creates reports and suggestions; it never mutates manuscript text automatically.
4. Local-first: project data stays in a local folder/SQLite database unless the user explicitly selects cloud AI.
5. Interoperability: Markdown is the stable interchange format until supported import/export adapters for novelWriter and Kindling are validated.

## Layers
- Desktop UI: PySide6.
- Application services: project, manuscript, knowledge ingestion, review, export.
- Persistence: SQLite + FTS5; manuscript and notes stored in the project database in this prototype.
- AI adapters: Ollama local and OpenAI Responses API.
- Ingestion: pypdf, EbookLib + BeautifulSoup, python-docx, plain text.
- Packaging: PyInstaller folder build + Inno Setup installer.

## Next engineering milestones
v0.3: background import jobs, OCR option, source metadata editor, chapter/section-aware locators.
v0.4: web source capture with URL/date/licence metadata and citations.
v0.5: semantic retrieval, multilingual embeddings, claim/source graph.
v0.6: four research lenses and comparative tradition matrix.
v0.7: concept forge and structured story outline generation.
v0.8: novelWriter/Kindling adapters after validating their supported interchange formats.
v1.0: DOCX/EPUB publishing, automated tests, signed installer, crash recovery and migration tooling.
