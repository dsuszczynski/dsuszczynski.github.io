# Daniel Suszczynski - Portfolio Website

Jekyll-based portfolio website for GitHub Pages.

## Structure

```
├── _config.yml              # Jekyll configuration
├── _layouts/                # Page templates
│   ├── default.html         # Base layout (nav, footer, canvas)
│   ├── article.html         # Article page template
│   └── case-study.html      # Interactive case study template
├── _includes/               # Reusable components
│   ├── head.html            # <head> content
│   ├── nav.html             # Navigation
│   ├── footer.html          # Footer
│   ├── network-canvas.html  # Animated background
│   └── scripts.html         # Common JavaScript
├── _articles/               # Blog posts (Markdown)
├── _case_studies/           # Case studies (Markdown with slides)
├── assets/css/main.css      # Global styles
├── articles/index.html      # Articles listing page
├── case-studies/index.html  # Case studies listing page
├── index.html               # Homepage
└── photo.jpg                # Profile photo
```

## Adding New Content

### New Article

Create a file in `_articles/` with this format:

```markdown
---
title: "Your Article Title"
subtitle: "A brief description"
date: 2026-02-15
read_time: 8
tags:
  - Tag1
  - Tag2
slug: your-article-slug
---

Your content in Markdown...
```

### New Case Study

Create a file in `_case_studies/` with slides defined in YAML:

```markdown
---
title: "Case Study Title"
category: Category Name
excerpt: "Brief description"
slug: case-study-slug
stats:
  - value: "40%"
    label: "Improvement"
slides:
  - label: "Overview"
    title: "Slide Title"
    subtitle: "Slide subtitle"
    content: |
      HTML content for this slide...
---
```

## Local Development

```bash
bundle install
bundle exec jekyll serve
```

Open http://localhost:4000

## Deployment

Push to `suszczynski.github.io` repository. GitHub Pages will build automatically.

## URLs

- Homepage: `/`
- About section: `/#about`
- Experience: `/#experience`
- Skills: `/#skills`
- Articles list: `/articles/`
- Single article: `/articles/your-slug/`
- Case studies list: `/case-studies/`
- Single case study: `/case-studies/your-slug/`
- Contact: `/#contact`
