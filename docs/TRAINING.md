# Sharing Claude skills across the sales team: a walkthrough

## 1. The idea in one minute

We keep our skills in one Git repo. Claude can read that repo as a **marketplace**.
People add the repo once, install the plugin, and get our skills in Chat and Cowork.
When we improve a skill, we change the repo and everyone gets the update.

No scripts, no emailing zip files.

## 2. Vocabulary

- **Skill**: a folder with a `SKILL.md`. The top of the file (frontmatter) has a `name` and a `description`. The description is how Claude decides when to use it. The body is the instructions.
- **Plugin**: a folder with `.claude-plugin/plugin.json` plus a `skills/` folder. It is the unit people install. It has a `version`.
- **Marketplace**: the repo root with `.claude-plugin/marketplace.json`, listing plugins.

## 3. Install (each user, one time)

1. Open Claude Desktop and go to **Customize → Plugins**.
2. Select **Add marketplace** and enter the repo as `owner/repo` or its full URL.
3. Install **sales-basics**.
4. Start a **new** chat. Skills are picked up at the start of a conversation.
5. Test: paste fake call notes and say "summarize this call".

To get updates later: on the marketplace, select **Check for updates**, or turn on **Sync automatically**.

> Private repo? Users need access to it. On Team/Enterprise, an Owner can sync it
> for the whole org instead (see section 6).

## 4. Add your own skill (author)

1. Copy the folder `plugins/sales-basics/skills/call-notes-summarizer` to a new name, for example `plugins/sales-basics/skills/follow-up-email`.
2. Edit `SKILL.md`:
   - `name`: lowercase with hyphens, matching the folder name.
   - `description`: say **what** it does and **when** to use it, including phrases people actually say. This is the most important line in the file.
   - Body: numbered steps, an output template, and rules like "write Not discussed instead of guessing".
3. Optional: put long reference material in `references/` and point to it from `SKILL.md`.
4. Bump `version` in `plugins/sales-basics/.claude-plugin/plugin.json` (for example 1.0.0 to 1.1.0).
5. Open a pull request, get a reviewer, merge.

## 5. Add a whole new plugin

Create `plugins/<new-name>/` with the same layout, then add an entry to
`.claude-plugin/marketplace.json`:

```json
{ "name": "<new-name>", "source": "./plugins/<new-name>", "description": "..." }
```

Keep `source` as a relative path inside this repo. Entries that point at other repos
are not supported by org sync.

## 6. Team / Enterprise rollout (Owner)

Organization settings → **Plugins & skills** → **Marketplaces** → **Add plugins** →
**Sync from GitHub** → enter `owner/repo`. Then set each plugin to available,
installed by default, or required.

- Auto-sync runs when a pull request that bumps a plugin version is merged to the default branch. Direct pushes do not trigger it.
- You can always click **Re-sync** manually.

## 7. Good habits

- Never put customer names, contact details, or credentials in skills or examples. Use fictional data like in `references/example.md`.
- One workflow per skill. "Call summary" and "follow-up email" are separate skills.
- Keep `SKILL.md` short (under about 500 lines). Move detail to `references/`.
- Test with a few real-looking prompts before merging. If Claude doesn't use the skill, rewrite the description.
- Pick an owner for the repo. Review changes via pull request.

## 8. Fallback: manual upload

If plugins are unavailable to someone, run `scripts/package-skill-zips.sh`. It creates
one zip per skill in `dist/`. Upload via **Customize → Skills → Add skill → Upload skill**.
This is manual and does not auto-update.

## 9. Troubleshooting

| Symptom | Likely cause |
|---|---|
| Plugin installs but skill never triggers | Description too vague. Add trigger phrases. Start a new chat. |
| Plugin not found / won't add | No access to the repo, or `marketplace.json` has a JSON typo. |
| Skill folder ignored | Folders were placed inside `.claude-plugin/`. Only `plugin.json` goes there; `skills/` sits at the plugin root. |
| Update not showing | Version not bumped, or sync not run. Check for updates / Re-sync. |
