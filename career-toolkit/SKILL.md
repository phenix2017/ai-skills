---
name: career-toolkit
description: "A bundled career toolkit that routes job search work across five skills: JD decoding, resume building, behavioral interview story prep, salary negotiation, and offer comparison. Use when the user needs help deciding whether to apply, tailoring a resume, preparing STAR/CAR stories, negotiating compensation, or choosing between offers."
---

# Career Toolkit

Use this bundle as a router for the career workflow:

1. `skills/job-description-skill/` - decode a job description, score fit, identify gaps, predict interviews, and create an Offer Strategy Report.
2. `skills/resume-skill/` - parse, build, tailor, and render resumes from structured resume data.
3. `skills/bq-skill/` - mine real experience, structure STAR/CAR stories, maintain a Story Bank, and prepare behavior interview questions from a JD.
4. `skills/salary-negotiation-skill/` - diagnose an offer, map leverage, generate negotiation scripts, simulate recruiter pushback, and define stop lines.
5. `skills/offer-compare-skill/` - compare two or more offers across compensation, growth, risk, lifestyle, and long-term career value.

## Routing

Start with the user's current stage:

| User stage | Skill to use |
|---|---|
| "Should I apply?" / "Analyze this JD" | `job-description-skill` |
| "Improve my resume" / "Make a resume" | `resume-skill` |
| "Prepare behavioral questions" / "STAR stories" | `bq-skill` |
| "Negotiate this offer" / "Counter offer" | `salary-negotiation-skill` |
| "Which offer should I take?" | `offer-compare-skill` |

If the request spans several stages, execute them in workflow order:

`JD -> Resume -> BQ -> Salary Negotiation -> Offer Compare`

## Shared Standards

- Do not fabricate user experience, compensation, job facts, company facts, dates, or metrics.
- Ask one follow-up question at a time when required information is missing.
- Prefer reusable banks inside each skill before starting from scratch:
  - `jd-bank/`
  - `story-bank/`
  - `deal-bank/`
  - `offer-bank/`
- When generating HTML reports, preserve each skill's required visual system, bilingual rules, export controls, and neutral toolkit footer requirements.
- For compensation and market data, require user-provided numbers or cite a current external source. Do not rely on memory for live salary bands.

## Publishing Note

This is an organized bundle of the career skills collection. The original skill content, examples, templates, and assets are preserved under `skills/`; the bundle adds a stable package structure, index, installer, and release metadata.


