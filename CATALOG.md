# Skills Catalog

This catalog sorts the repository by when a skill should be used. Keep folders stable; use this file as the navigation layer.

## Recommended Install Sets

| Profile | Install these | Best for |
|---|---|---|
| `core-coding` | `smart-explore`, `learn-codebase`, `karpathy-guidelines`, `knowledge-cutoff-discipline`, `skeptical-architect`, `staged-change`, `make-plan`, `do` | Daily software work with safer planning and implementation |
| `architecture-review` | `smart-explore`, `pathfinder`, `skeptical-architect`, `staged-change`, `ui-layout-audit`, `make-plan` | Refactors, audits, and complex UI/layout work |
| `design-suite` | Pick either `design` only, or `brand`, `banner-design`, `slides`, `design-system`, `ui-styling`, `ui-ux-pro-max` | Product design, visual systems, UI implementation |
| `memory-ops` | `mem-search`, `knowledge-agent`, `timeline-report`, `weekly-digests`, `how-it-works` | claude-mem users who want recall, reporting, and project history |
| `github-ops` | `babysit`, `standup`, `oh-my-issues`, `version-bump` | PR monitoring, issue triage, release workflows |
| `career-workflow` | `career-toolkit` | Job search: JD analysis, resume, interviews, negotiation, offer decisions |

## Core Coding & Codebase Understanding

| Skill | Use when | Notes |
|---|---|---|
| `smart-explore` | You need targeted code structure lookup | Fastest first pass for definitions, references, and flows |
| `learn-codebase` | You need full repo onboarding | Exhaustive, token-heavy, best for unfamiliar codebases |
| `karpathy-guidelines` | Writing or reviewing code | General discipline for surgical changes and explicit assumptions |
| `knowledge-cutoff-discipline` | Code references current models, SDKs, APIs, versions, pricing, or endpoints | Prevents false corrections based on stale model knowledge |

## Planning, Architecture & Review

| Skill | Use when | Notes |
|---|---|---|
| `pathfinder` | You need architecture maps or duplicated-system analysis | Produces flowcharts and handoff prompts |
| `skeptical-architect` | You want a critical architecture review before implementation | Read-only by design |
| `staged-change` | The change is risky, ambiguous, or public-contract-facing | Auditor -> Challenger -> Implementer -> Explainer |
| `make-plan` | You need a phased implementation plan | Good follow-up to `pathfinder` or `design-is` |
| `do` | You want to execute an existing plan | Best after `make-plan` |
| `ui-layout-audit` | UI is clipped, overlapping, cramped, or manually positioned | Layout math and visual audit discipline |
| `design-is` | You want a design critique against Rams principles | Diagnoses and hands off to planning |

## Design & Brand

| Skill | Use when | Notes |
|---|---|---|
| `design` | You want one broad design super-skill | Overlaps with `brand`, `banner-design`, `slides`, and `design-system` |
| `brand` | Brand voice, messaging, identity, or guideline work | Narrower and more predictable than `design` |
| `banner-design` | Social, ad, website hero, or print banner direction | Visual asset focused |
| `slides` | Strategic HTML presentation creation | Uses Chart.js and slide strategy references |
| `design-system` | Tokens, component specs, CSS variables, design-system governance | Best for systematic UI foundations |
| `ui-styling` | shadcn/ui, Tailwind, accessibility, responsive UI implementation | Practical frontend styling support |
| `ui-ux-pro-max` | UI/UX design intelligence across many stacks and styles | Large reference-backed design engine |

## Memory & Reporting

These depend on claude-mem data being available.

| Skill | Use when | Notes |
|---|---|---|
| `mem-search` | You need to find prior work or decisions | Ad hoc recall |
| `knowledge-agent` | You want a reusable knowledge base from observations | Curated memory brain |
| `timeline-report` | You need a full project-history narrative | One-shot report |
| `weekly-digests` | You want serial weekly history chapters | Good for long projects |
| `how-it-works` | You want claude-mem explained | Explains capture, injection, and storage |

## GitHub, Issues & Release

| Skill | Use when | Notes |
|---|---|---|
| `babysit` | A PR needs monitoring until merge-ready | Watches CI/reviews/comments |
| `standup` | You need to compare worktrees, branches, or PRs | Read-only consolidation plan |
| `oh-my-issues` | Issue tracker needs clustering or dedupe | Groups issues by root cause |
| `version-bump` | Releasing a Claude Code plugin | Versioning, tags, changelog, GitHub release support |

## Career Workflow

| Skill bundle | Use when | Contains |
|---|---|---|
| `career-toolkit` | Job search or offer workflow | `job-description-skill`, `resume-skill`, `bq-skill`, `salary-negotiation-skill`, `offer-compare-skill` |

## Communication & Misc

| Skill | Use when | Notes |
|---|---|---|
| `what-the` | You need a plain-English breakdown of something technical | Who, what, where, why, when |
| `wowerpoint` | You want a document turned into a kawaii NotebookLM-style slide-deck PDF | Artifact generation |

## Duplication Map

| Overlap | Recommendation |
|---|---|
| `design` vs `brand` + `banner-design` + `slides` + `design-system` | Install `design` for broad coverage, or the narrower set for predictable routing. Do not install both sets together unless you accept overlap. |
| `smart-explore` vs `learn-codebase` | Use `smart-explore` for targeted lookup; use `learn-codebase` for full onboarding. |
| `pathfinder` vs `skeptical-architect` | `pathfinder` maps and proposes architecture; `skeptical-architect` critiques risk and stops before implementation. |
| `make-plan` vs `do` | `make-plan` designs the implementation; `do` executes it. |
| `timeline-report` vs `weekly-digests` | `timeline-report` is one complete narrative; `weekly-digests` produces serial chapters. |
