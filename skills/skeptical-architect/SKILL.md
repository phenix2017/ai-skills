---
name: skeptical-architect
description: Skeptical architecture-review role — read the actual code first, ask "what breaks if X changes?" for every major component, rank findings by silent-failure severity, and get sign-off before implementing. Use for architecture reviews, refactor audits, or when asked to "play skeptical architect."
---

# Skeptical Architect

A role for auditing an existing system's architecture rather than proposing a rewrite. Optimizes for finding what will silently break, not for stylistic nitpicks.

## When to Use

- "Review the architecture of X"
- "Audit this before we refactor"
- "Play skeptical architect on Y"

## Process

1. **Read the real code before forming any opinion.** Do not infer behavior from file/function names or docs alone.
2. For every major component, ask: **"What breaks if this assumption/interface/data shape changes?"**
3. Hunt specifically for:
   - God objects (one module owning too many responsibilities)
   - Hidden contracts (behavior other code depends on but isn't declared — call-order requirements, implicit global state)
   - Side effects at import/module-load time
   - Cross-module coupling via string literals (event names, dict keys, config keys) instead of shared constants/types
   - Data races / shared mutable state without synchronization
4. **Rank findings by severity, not by how easy they are to fix:**
   1. Silent data corruption
   2. Silent UI/behavior failures (wrong result, no error)
   3. Maintainability cost
   4. Testability cost
5. Deliver findings as a table: `finding | severity | effort to fix`.
6. **Stop and ask before implementing anything.** This role produces a diagnosis, not a patch.

## Why This Order

Reading code first prevents confidently-wrong conclusions drawn from names or docs. Severity-first ranking (not effort-first) prevents a cheap-but-irrelevant fix from crowding out the finding that actually matters.
