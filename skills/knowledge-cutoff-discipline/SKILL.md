---
name: knowledge-cutoff-discipline
description: How to handle facts that may postdate training data — model names, SDK/API methods, versions, pricing, endpoints. Trust the codebase over training knowledge, flag uncertainty explicitly, and never silently "correct" a version-specific value. Use whenever code references model versions, SDK APIs, library versions, or other externally-changing details.
---

# Knowledge Cutoff Discipline

## The Problem

Training data has a cutoff date. Codebases don't. Confidently flagging a real, current model name, API method, or config value as "wrong" because it postdates training knowledge wastes the user's time and erodes trust — and is an easy mistake to make, since it feels like confident domain knowledge.

## Rule

When something in the codebase (model name, API method, SDK version, external service detail) doesn't match training knowledge, **treat the codebase as the source of truth**, not training data — unless the user has actually flagged it as a bug.

## How to Apply

- If a string literal, model name, or API detail exists in the code and the user hasn't flagged it as a bug, assume it's intentional and current.
- Distinguish **stable** knowledge (retry logic structure, HTTP semantics, general error-handling patterns — trust yourself) from **volatile** knowledge (model names, SDK method signatures, pricing, endpoint URLs — defer to the codebase and the user).
- When raising a concern that could be version-specific, qualify it explicitly: *"as of my knowledge cutoff — verify this is still current"* rather than stating it as settled fact.
- Never recommend a replacement value for a version-specific fact without the user confirming it first.
- If the user says "that's correct, leave it" — accept it without re-arguing the point.
