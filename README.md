<picture>
  <source media="(prefers-color-scheme: dark)" srcset="source/_static/img/rootaccess-logo-white.svg">
  <img alt="Root Access" src="source/_static/img/rootaccess-logo-color.svg" width="300">
</picture>

# Root Access Policy Handbook

The official policy handbook for [Root Access Hackerspace](https://rootaccess.org/) in Fresno, CA. Published at **[handbook.rootaccess.org](https://handbook.rootaccess.org/)**.

Built with [Sphinx](https://www.sphinx-doc.org), the [Read The Docs theme](https://sphinx-rtd-theme.readthedocs.io/), and [MyST](https://myst-parser.readthedocs.io/) for Markdown parsing. Every push to `main` triggers a GitHub Action that builds and deploys to GitHub Pages.

## Local Development

**Install dependencies:**

```bash
pip install -r requirements.txt
```

**Build the handbook:**

```bash
make html
```

Output lands in `build/html/`. Open `build/html/index.html` in a browser to preview.

**Live-reloading dev server:**

```bash
sphinx-autobuild source build/html
```

## Project Structure

```
source/
  index.md          # Welcome page and table of contents
  membership.md     # Membership information
  policies/         # Rules & policies (conduct, guests, lockers, etc.)
  safety/           # Health & safety guidelines
  events/           # Classes, community events, and event hosting
  conf.py           # Sphinx configuration
  _static/          # Static assets (logo, favicon, PDFs)
```

## Deployment

Pushes to `main` automatically build and publish to GitHub Pages via the workflow in `.github/workflows/`. The site deploys to `handbook.rootaccess.org` using `ghp-import`.

## License

[![CC BY-NC-SA 4.0](source/_static/img/cc-by-nc-sa.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).
