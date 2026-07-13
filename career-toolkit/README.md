# Career Toolkit

An organized, publishable bundle of five career skills:

- Job Description Skill
- Resume Skill
- BQ Skill
- Salary Negotiation Skill
- Offer Compare Skill

## Structure

```text
Career-Toolkit/
  SKILL.md
  README.md
  manifest.json
  install.ps1
  skills/
    job-description-skill/
    resume-skill/
    bq-skill/
    salary-negotiation-skill/
    offer-compare-skill/
```

## What Changed

- Normalized folder names to match each skill's declared `name`.
- Added a top-level router skill so the bundle can be installed as one toolkit.
- Added a manifest for publishing and future automation.
- Added a PowerShell installer for local use.
- Kept original skill content, prompts, examples, banks, templates, and image assets intact.

## Install

Run from this folder:

```powershell
.\install.ps1
```

By default it installs to:

```text
%USERPROFILE%\.codex\skills\career-toolkit
```

To install somewhere else:

```powershell
.\install.ps1 -Destination "C:\path\to\skills\career-toolkit"
```

## Workflow

Use the toolkit in this order when the user needs a complete job-search flow:

```text
JD analysis -> Resume tailoring -> Behavioral prep -> Salary negotiation -> Offer comparison
```

Each skill can also run independently.

## Source

Included skills:

- `job-description-skill`
- `resume-builder-skill`
- `behavior-question-skill`
- `salary-negotiation`
- `offer-compare-skill`

## License

Original skill licensing is preserved in the included skill folders. The resume skill includes an MIT license file.


