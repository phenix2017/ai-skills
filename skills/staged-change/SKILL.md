---
name: staged-change
description: Four-stage workflow for non-trivial code changes — Auditor, Challenger, Implementer, Explainer — with a mandatory pause before any code is written. Use when asked to run the "full workflow" on a change, or for any risky/ambiguous modification that deserves review before implementation.
---

# Staged Change

Runs a non-trivial code change through four sequential, clearly-labeled stages instead of jumping straight to implementation.

## When to Use

- User says "do the full workflow on X"
- Any change that's risky, ambiguous, or touches a public interface/contract

## Stages

**1. Auditor (read-only)**
Read the affected component. Find gaps, silent-failure paths, missing error handling. Rank findings by blast radius. Do not touch code.

**2. Challenger (read-only)**
Pressure-test the proposed fix. Ask "what breaks if this assumption is false?" Push back on the design before committing to it.
**Stop here and surface concerns if anything is high-risk** (breaking interface, model/API change, ambiguous requirement) — get a decision before continuing.

**3. Implementer**
Build exactly what survived the challenge stage. No scope creep, no re-auditing, no unsolicited refactors. Follow the agreed spec.

**4. Explainer**
Summarize what changed, why, and what was deliberately left unchanged. One short paragraph, not a changelog.

## Rules

- Stages 1–2 are read-only — never write code before stage 3 is reached.
- Label each stage clearly in the response so progress is legible to the reader.
- Stage 2 is a hard gate for high-risk findings, not a formality — actually stop and ask before proceeding.
