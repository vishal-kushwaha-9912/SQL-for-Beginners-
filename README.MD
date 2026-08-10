 # SQL Learning Path

A hands-on SQL course that takes you from `SELECT` to window functions and recursive CTEs — with theory, diagrams, exercises, answer keys, and real database projects.

![Status](https://img.shields.io/badge/status-90%25%20complete-brightgreen)
![Chapters](https://img.shields.io/badge/chapters-7%2F8-blue)
![Exercises](https://img.shields.io/badge/exercises-105%2B-informational)
![License](https://img.shields.io/badge/license-MIT-yellow)
![Last Updated](https://img.shields.io/badge/updated-Aug%202026-lightgrey)

> Replace the license badge/link once `LICENSE` is confirmed in the repo, and swap in real GitHub badges (stars, last commit) once the repo URL is set — see the badge snippet at the bottom of this file.

---

## Table of Contents

- [Who this is for](#who-this-is-for)
- [Quick Start](#quick-start)
- [What's Included](#whats-included)
- [Course Structure](#course-structure)
- [Sample Diagrams](#sample-diagrams)
- [Projects](#projects)
- [How to Use This Course](#how-to-use-this-course)
- [Repo Layout](#repo-layout)
- [Read Online](#read-online)
- [Contributing](#contributing)
- [Author](#author)

---

## Who This Is For

Anyone learning SQL from scratch, or an intermediate user who wants to close gaps around `JOIN`s, `GROUP BY`/`HAVING`, and window functions. No prior database experience required — a text editor and a browser-based SQL client (e.g. [SQLite Online](https://www.sqliteonline.com/)) are enough to get started.

## Quick Start

1. Start with **Chapter 1 — SELECT & FROM**: [`CHAPTER-1/SELECT-FROM.md`](CHAPTER-1/SELECT-FROM.md)
2. Read the theory → study the diagram → do the exercises → check your answers against the corresponding `ANSWERSHEETS/SHEET-X/` folder.
3. Repeat chapter by chapter — each one builds on the last.

For the full 8-week suggested pace and phase-by-phase breakdown, see [`PATH/Learning-Roadmap.md`](PATH/Learning-Roadmap.md).

## What's Included

| Component | Amount |
|---|---|
| Chapters | 7 of 8 complete |
| Practice exercises | 105+ |
| Challenge problems | 80+ |
| Diagrams | 30+ |
| Real-world business templates | 40+ |
| Live database projects | 1 active, 2 planned |

Full stats table: [`docs/STATS.md`](docs/STATS.md)

## Course Structure

| # | Chapter | Status | Guide |
|---|---|---|---|
| 1 | SELECT & FROM | ✅ | [`CHAPTER-1/SELECT-FROM.md`](CHAPTER-1/SELECT-FROM.md) |
| 2 | WHERE Clause | ✅ | [`CHAPTER-2/WHERE-CLAUSE-COMPLETE.md`](CHAPTER-2/WHERE-CLAUSE-COMPLETE.md) |
| 3 | ORDER BY | ✅ | [`CHAPTER-3/ORDER-BY-COMPLETE.md`](CHAPTER-3/ORDER-BY-COMPLETE.md) |
| 4 | Aggregate Functions | ✅ | [`CHAPTER-4/AGGREGATE-FUNCTIONS-COMPLETE.md`](CHAPTER-4/AGGREGATE-FUNCTIONS-COMPLETE.md) |
| 5 | GROUP BY | ✅ | [`CHAPTER-5/GROUP-BY-COMPLETE.md`](CHAPTER-5/GROUP-BY-COMPLETE.md) |
| 6 | HAVING Clause | ✅ | [`CHAPTER-6/HAVING.md`](CHAPTER-6/HAVING.md) |
| 7 | JOINs (Beginner → Advanced) | ✅ | [`CHAPTER-7/SIMPLE_JOINS.md`](CHAPTER-7/SIMPLE_JOINS.md) → [`BASIC_JOINS.md`](CHAPTER-7/BASIC_JOINS.md) → [`ADVANCED_JOINS.md`](CHAPTER-7/ADVANCED_JOINS.md) |
| 8 | Subqueries & Advanced Topics | ⏳ Planned | — |

Detailed per-chapter topic lists, quality ratings, and learning outcomes: [`docs/COURSE-STRUCTURE.md`](docs/COURSE-STRUCTURE.md)

## Sample Diagrams

This course includes 30+ hand-made diagrams to make abstract concepts concrete. A few examples:

| | |
|---|---|
| ![JOIN types](IMAGES/join_types_venn_diagram.png) | ![SQL execution order](IMAGES/sql_execution_order.png) |
| JOIN types (Venn diagram) | Query execution order |

More in [`IMAGES/`](IMAGES/).

## Projects

Real, multi-table schemas to apply what you've learned:

| Project | Status | Focus |
|---|---|---|
| [Employee Management System](PROJECTS/Employee-Database/) | Active | HR, payroll, project tracking — 8 tables |
| [Library Management](PROJECTS/Library-Management/) | Schema ready | Catalog, patrons, overdue tracking |
| [Enterprise Employee Management](PROJECTS/Enterprise-Employee/) | Schema ready | Multi-location HR, hierarchies |

Sample query and full outcomes: [`docs/PROJECTS.md`](docs/PROJECTS.md)

## How to Use This Course

Theory → Diagrams → Exercises → Answer keys → Test series → Projects → Next chapter.

Full 8-step walkthrough: [`docs/HOW-TO-USE.md`](docs/HOW-TO-USE.md)

## Repo Layout

```
├── CHAPTER-1..7/        Chapter theory
├── IMAGES/              30+ diagrams
├── PRACTICESHEET/       Exercises per chapter
├── ANSWERSHEETS/        Solutions per chapter
├── TEST SERIES/         Assessments
├── PROJECTS/            Live multi-table database projects
├── PATH/                Learning roadmap
└── docs/                Extended stats, changelog, project detail
```

## Read Online

Chapters 1–7 are also published on Hashnode: [detailsnotes.hashnode.dev](https://detailsnotes.hashnode.dev/sql-chapter-1)

## Contributing

Found an error or have a suggestion? Open an issue or PR — see [`CONTRIBUTING.md`](CONTRIBUTING.md).

## Author

**Vishal Kushwaha**

---

<sub>Once this repo has a public URL, replace the badges above with live ones, e.g.:</sub>

```markdown
![GitHub stars](https://img.shields.io/github/stars/vishal-kushwaha-9912/REPO-NAME?style=social)
![Last commit](https://img.shields.io/github/last-commit/vishal-kushwaha-9912/REPO-NAME)
```