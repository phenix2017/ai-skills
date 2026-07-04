---
name: ui-layout-audit
description: Ordered process for auditing and building pixel-based UI layouts — spatial mapping before widget details, plus a pre/post/boundary-condition method for proving sizing math before writing code. Use for UI reviews, layout bugs, clipped/overlapping widgets, or any desktop/web work with explicit positioning or sizing.
---

# UI Layout Audit

Two complementary methods: an **audit order** (what to check, and in what sequence, when reviewing a layout) and a **layout-math discipline** (how to prove a layout is correct before it's ever rendered).

## When to Use

- Reviewing a UI for placement, spacing, or accessibility issues
- Writing any layout with explicit widths/heights/columns (desktop toolkits, CSS grid/flex with fixed dimensions, canvas-based UIs)
- Debugging clipped or overlapping widgets

## Part 1 — Audit Order (layout-level before widget-level)

Check in this order — don't start at step 4 just because contrast is easier to eyeball than layout geometry.

1. **Spatial mapping.** For every control, ask: which region of the screen does it affect? It must sit spatially adjacent to that region (Gestalt proximity; Norman's *Design of Everyday Things*). In a split-panel layout, controls for the left panel belong at the left end of the toolbar; controls for the right panel belong at the right end.
2. **Grouping and flow.** Are controls that share a workflow grouped together? Does a divider/spacer actually fall between distinct groups, rather than being decorative?
3. **Fitts's Law.** Is the most time-sensitive/reactive action nearest to where the cursor naturally rests during the primary workflow?
4. **Contrast (WCAG AA).** 4.5:1 minimum for normal text, 3:1 for large text (18pt+/14pt+ bold).
5. **Iconography.** Status indicators use conventional symbols (●, not `*`), not arbitrary punctuation.
6. **False system state.** No widget may display a value it cannot currently update (e.g. a progress bar frozen at a stale percentage).
7. **Padding and gutters.** Minimum ~8px from container edges; interactive controls must not touch panel walls.

## Part 2 — Layout Math Discipline

A layout is correct if and only if every widget's rendered boundary falls within its container. Prove this in three stages, in order:

1. **Pre-condition (before writing any code):** Sum every cost the layout incurs from named constants — explicit dimensions, framework window/container padding (both sides), item spacing between every adjacent pair (gaps = n_items − 1), border widths, scrollbar allowance, minimum content widths. Assert total ≤ available space. **If you can't write this equation from named constants alone, the layout isn't provably correct yet — don't write the code.**
2. **Post-condition (after rendering):** A passing equation is necessary, not sufficient — implicit costs get miscounted. Visually inspect every widget whose edge is near a container boundary and confirm it's unclipped.
3. **Boundary condition:** Re-validate at the minimum supported window/viewport size, not just the default. A layout that works at a comfortable size can still fail at minimum width.

## Why

Auditing widget-by-widget (contrast, padding) before checking spatial mapping misses placement errors that are obvious once the layout is drawn mentally but easy to skip if you start at properties. Guessing at layout constants instead of writing the sum-of-costs equation produces bugs that only surface once a screenshot is taken — by then it's a debugging session instead of a five-minute check.
