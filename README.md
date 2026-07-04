# ai-skills

Personal library of general-purpose Claude Code skills, gathered from a few
sources for reuse across projects. Not project-specific — nothing here
assumes any particular codebase.

To use: copy any `skills/<name>` folder into `~/.claude/skills/` (available in
every project) or a project's `.claude/skills/` (that project only).

## ⚠️ Before installing: one real duplication

`design` is a monolithic skill whose own description covers the same ground
as `brand`, `banner-design`, `slides`, and (partially) `design-system`
combined. Installing `design` *alongside* those four means an overlapping
request (e.g. "design a banner") can match more than one skill at once, with
no reliable way to predict which one Claude Code picks.

**Pick one side, don't install both:**
- Want one skill that covers everything → install `design` only.
- Want narrower, more predictable matching per task → install `brand` +
  `banner-design` + `slides` + `design-system`, skip `design`.

This repo keeps all of them for reference regardless of which you activate.

## Design & Branding

| Skill | What it does | License |
|---|---|---|
| `ui-ux-pro-max` | Core design-intelligence engine: 50+ styles, color palettes, font pairings, accessibility/UX rules across 10+ stacks | MIT |
| `ui-styling` | shadcn/ui + Tailwind implementation patterns, theming, dark mode | MIT |
| `design-system` | Design tokens (primitive→semantic→component), CSS variables, component specs | MIT |
| `brand` | Brand voice, visual identity, messaging consistency | MIT |
| `banner-design` | Social/ad/web/print banner design direction | MIT |
| `slides` | Strategic HTML presentations with Chart.js | MIT |
| `design` | All of the above bundled into one skill — see duplication warning | MIT |

All from [ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill).

## Codebase Understanding

Different depths, not alternatives — pick by how much context you need:

| Skill | Depth | Use when |
|---|---|---|
| `smart-explore` | Targeted, tree-sitter AST-based search | Quick lookup — "where's X defined," "find this function" |
| `learn-codebase` | Exhaustive — reads every source file in full | Onboarding onto a new/unfamiliar project |
| `pathfinder` | Architecture-level, cross-feature flowcharts | Auditing before a refactor, unifying duplicated systems (hands off to `make-plan`) |

## Planning & Execution (a pipeline, not a menu)

`pathfinder` and `design-is` both diagnose and hand off to `make-plan`, which
`do` then executes. Use them in sequence, not as competing options:

```
pathfinder (architecture audit)  ─┐
                                   ├─→  make-plan  →  do
design-is (design-quality audit) ─┘
```

| Skill | Role |
|---|---|
| `pathfinder` | Diagnose: map codebase, propose unified architecture |
| `design-is` | Diagnose: audit a design against Dieter Rams' principles |
| `make-plan` | Plan: phased implementation plan with documentation discovery |
| `do` | Execute: carry out a plan (especially one from `make-plan`) using subagents |

## Memory & Reporting (claude-mem required)

Same underlying data (claude-mem's observation/timeline history), different
output shape — **all four are inert without the
[claude-mem](https://github.com/thedotmack/claude-mem) tool installed and
recording history**:

| Skill | Output |
|---|---|
| `mem-search` | Ad hoc query — "did we solve this before?" |
| `knowledge-agent` | Curated, reusable "knowledge base" built from observations |
| `timeline-report` | One-shot full narrative project history |
| `weekly-digests` | Serial week-by-week narrative digest |
| `how-it-works` | Explains how claude-mem itself works (observation capture, memory injection) — not a general codebase explainer |

## Review & Process Discipline

Behavioral roles/processes, not domain knowledge — apply regardless of stack.

| Skill | What it does |
|---|---|
| `skeptical-architect` | Architecture-audit role: read code first, ask "what breaks if X changes?", rank findings by silent-failure severity, get sign-off before implementing |
| `staged-change` | Four-stage gate for non-trivial changes — Auditor → Challenger → Implementer → Explainer — with a hard pause before code is touched |
| `ui-layout-audit` | Ordered UI audit (spatial mapping → grouping → Fitts's Law → contrast → iconography → state → padding) plus a pre/post/boundary-condition method for proving layout math before writing code |
| `knowledge-cutoff-discipline` | Trust the codebase over training knowledge for version-specific facts (model names, SDK methods, pricing); flag uncertainty instead of silently "correcting" values |

`karpathy-guidelines` above overlaps with `skeptical-architect` and `staged-change` on caution/surgical-change philosophy — they're complementary, not redundant: `karpathy-guidelines` governs how you write code, the other two govern the review/planning process around it.

## Git / Issue Workflow

| Skill | What it does |
|---|---|
| `babysit` | Watch **one** PR/review cycle until it's actually mergeable |
| `standup` | Read-only comparison **across** worktrees/branches/PRs into one consolidation plan |
| `oh-my-issues` | Cluster an issue **backlog** by root cause into plan-master issues |

## Release & Misc

| Skill | What it does |
|---|---|
| `version-bump` | Semantic versioning + release workflow for Claude Code plugins |
| `what-the` | Plain-English breakdown of something technical |
| `wowerpoint` | Turn one document into a slide-deck PDF |
| `karpathy-guidelines` | Behavioral guidelines to reduce common LLM coding mistakes (surgical changes, surfacing assumptions, verifiable success criteria) — [source](https://github.com/forrestchang/andrej-karpathy-skills), MIT |

Everything in Git/Issue Workflow and Release & Misc (except `karpathy-guidelines`)
is from claude-mem, Apache-2.0.

---

All entries reflect only the `SKILL.md` frontmatter reviewed at import time,
not a full read of every script — read a skill's `SKILL.md` before relying
on it for anything consequential.

## Notes

- Some `design`/`banner-design` actions (logo/icon generation) call out to
  Gemini image generation; those specific actions need that integration
  configured to work.
- See `NOTICE` for required attribution on the Apache-2.0-licensed skills,
  and `LICENSE-APACHE-2.0` / `LICENSE-MIT-ui-ux-pro-max` for full license
  text.
