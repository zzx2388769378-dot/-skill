# Project Index

> Auto-generated: 2026-09-17 16:21:00
> Update: `.\scripts\update-index.ps1` | Search: `@fiction-index` | Route: `@fiction-pipeline`

## Agents

| Agent | Path | Description |
|-------|------|-------------|
| `fiction-architect` | `.cursor/skills/fiction-architect/SKILL.md` | Decomposes novel ideas into structured architecture using NOVEL-MASTER template. Captures raw ideas,... |
| `fiction-genre-scout` | `.cursor/skills/fiction-genre-scout/SKILL.md` | Searches the web for trending novel genres/themes, generates hot and innovative genre pitches each w... |
| `fiction-ideator` | `.cursor/skills/fiction-ideator/SKILL.md` | Generates multiple novel story ideas from a genre or theme (题材). Outputs pitch cards with logline, p... |
| `fiction-index` | `.cursor/skills/fiction-index/SKILL.md` | Searches and retrieves project documentation via INDEX.md and index.json. Updates the index when fil... |
| `fiction-pipeline` | `.cursor/skills/fiction-pipeline/SKILL.md` | Orchestrates the full fiction writing pipeline. Reads INDEX/index.json to determine current stage an... |
| `fiction-writer` | `.cursor/skills/fiction-writer/SKILL.md` | Writes novel prose from fiction-architect output. Reads architecture.md and novel.md under fiction/{... |

## Pipeline

- genre-scout: _genres/
- ideator: _ideas/
- architect: fiction/title/
- writer: chapters/

## Genres (_genres)

_empty_

## Ideas (_ideas)

_empty_

## Projects (fiction/)

_empty_

## Docs

| File | Role |
|------|------|
| `README.md` | usage guide |
| `docs/PIPELINE.md` | pipeline review |
| `_templates/NOVEL-MASTER.template.md` | blank template |
| `index.json` | machine-readable index |

