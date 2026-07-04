# ai-skills

Personal library of general-purpose Claude Code skills, gathered from a few
sources for reuse across projects. Not project-specific — nothing here
assumes any particular codebase.

To use: copy any `skills/<name>` folder into `~/.claude/skills/` (available in
every project) or a project's `.claude/skills/` (that project only).

## Skills

| Skill | What it does | Source | License |
|---|---|---|---|
| `banner-design` | Social/ad/web/print banner design direction | [ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | MIT |
| `brand` | Brand voice, visual identity, messaging consistency | ui-ux-pro-max-skill | MIT |
| `design` | Logos, icons, CIP mockups, banners, social assets | ui-ux-pro-max-skill | MIT |
| `design-system` | Design tokens (primitive→semantic→component), slide generation | ui-ux-pro-max-skill | MIT |
| `slides` | Strategic HTML presentations with Chart.js | ui-ux-pro-max-skill | MIT |
| `ui-styling` | shadcn/ui + Tailwind component patterns, theming | ui-ux-pro-max-skill | MIT |
| `ui-ux-pro-max` | Core design-intelligence engine: accessibility, color, typography, layout rules across 10+ stacks | ui-ux-pro-max-skill | MIT |
| `karpathy-guidelines` | Behavioral guidelines to reduce common LLM coding mistakes (surgical changes, surfacing assumptions, verifiable success criteria) | [andrej-karpathy-skills](https://github.com/forrestchang/andrej-karpathy-skills) | MIT |
| `babysit` | Watch a PR/review cycle until it's actually mergeable | [claude-mem](https://github.com/thedotmack/claude-mem) | Apache-2.0 |
| `design-is` | Audit a design against Dieter Rams' ten "Good design is..." principles | claude-mem | Apache-2.0 |
| `do` | Execute a phased implementation plan using subagents | claude-mem | Apache-2.0 |
| `how-it-works` | Explain how a system/codebase works | claude-mem | Apache-2.0 |
| `knowledge-agent` | Build/query AI knowledge bases from claude-mem observation history | claude-mem | Apache-2.0 |
| `learn-codebase` | Build understanding of an unfamiliar codebase | claude-mem | Apache-2.0 |
| `make-plan` | Produce an implementation plan | claude-mem | Apache-2.0 |
| `mem-search` | Search claude-mem's cross-session memory DB (needs claude-mem installed) | claude-mem | Apache-2.0 |
| `oh-my-issues` | Cluster a GitHub issue backlog by root cause into plan-master issues | claude-mem | Apache-2.0 |
| `pathfinder` | Map a codebase into feature-grouped flowcharts, propose unified architecture | claude-mem | Apache-2.0 |
| `smart-explore` | Token-optimized structural code search via tree-sitter AST parsing | claude-mem | Apache-2.0 |
| `standup` | Read-only standup across git worktrees/branches/PRs, one consolidation plan | claude-mem | Apache-2.0 |
| `timeline-report` | Narrative "Journey Into [Project]" report from claude-mem's timeline | claude-mem | Apache-2.0 |
| `version-bump` | Semantic versioning + release workflow for Claude Code plugins | claude-mem | Apache-2.0 |
| `weekly-digests` | Week-by-week narrative digest of a project's claude-mem timeline | claude-mem | Apache-2.0 |
| `what-the` | Plain-English breakdown of something technical | claude-mem | Apache-2.0 |
| `wowerpoint` | Turn one document into a slide-deck PDF | claude-mem | Apache-2.0 |

All entries reflect only the `SKILL.md` frontmatter reviewed at import time,
not a full read of every script — read a skill's `SKILL.md` before relying
on it for anything consequential.

## Notes

- `mem-search` only returns results if the companion
  [claude-mem](https://github.com/thedotmack/claude-mem) tool is also
  installed and has recorded session history — it's inert without it.
- Some `design`/`banner-design` actions (logo/icon generation) call out to
  Gemini image generation; those specific actions need that integration
  configured to work.
- See `NOTICE` for required attribution on the Apache-2.0-licensed skills,
  and `LICENSE-APACHE-2.0` / `LICENSE-MIT-ui-ux-pro-max` for full license
  text.
