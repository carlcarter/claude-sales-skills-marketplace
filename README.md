# Acme Sales Skills Marketplace (sample)

A minimal, working example of sharing Claude skills with a sales team through a Git repo.

## What's in here

```
acme-sales-skills/
├── .claude-plugin/
│   └── marketplace.json          # The catalog: lists the plugins in this repo
├── plugins/
│   └── sales-basics/             # One plugin = one installable bundle
│       ├── .claude-plugin/
│       │   └── plugin.json       # Plugin name, version, description
│       └── skills/
│           └── call-notes-summarizer/
│               ├── SKILL.md      # The skill itself (instructions for Claude)
│               └── references/
│                   └── example.md  # Optional extra files Claude reads when needed
├── scripts/
│   └── package-skill-zips.sh     # Fallback: zip skills for manual upload
└── docs/
    └── TRAINING.md               # Walkthrough for teaching others
```

## The mental model

| Piece | What it is | Analogy |
|---|---|---|
| **Skill** | A folder with a `SKILL.md`. Teaches Claude one task. | A recipe |
| **Plugin** | A folder bundling one or more skills, with a version. | A cookbook |
| **Marketplace** | A Git repo with a `marketplace.json` listing plugins. | The bookshelf |

## Quick start (users)

In Claude Desktop: **Customize → Plugins → Add marketplace**, enter this repo's
`owner/repo` or URL, then install **sales-basics**. Start a new chat and try:
"Summarize these call notes: ..."

See `docs/TRAINING.md` for the full walkthrough, publishing updates, and admin rollout.
