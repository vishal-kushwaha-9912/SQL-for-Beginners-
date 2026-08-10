# Learning Roadmap

Suggested pacing: 12–16 weeks at 1–2 hours/day, adjusted to your own speed. Each phase builds on the last — skipping ahead is not recommended.

## Phase 1: Core Foundations — Chapter 1

**Outcomes:**
- Write `SELECT` queries to retrieve specific columns
- Use `DISTINCT` to find unique values
- Create column aliases with `AS`
- Perform calculations in the correct order (PEMDAS)
- Handle `NULL` values and understand data types

## Phase 2: Filtering & Sorting — Chapters 2–3

**Outcomes (in addition to Phase 1):**
- Filter with `WHERE` using all 8 comparison operators
- Combine conditions with `AND`, `OR`, `NOT`
- Pattern-match with `LIKE`
- Understand operator precedence
- Sort with `ORDER BY`, single and multi-column, including `NULL` handling

## Phase 3: Aggregation — Chapters 4–5

**Outcomes (in addition to Phase 2):**
- Use all 5 aggregate functions correctly: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- Handle `NULL` in aggregates
- Distinguish `WHERE` vs `HAVING`
- Count unique values with `COUNT(DISTINCT)`
- Group by one or multiple columns
- Know the query execution order: `FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY`

## Phase 3B: Advanced Filtering — Chapter 6

**Outcomes (in addition to Phase 3):**
- Understand `HAVING` fundamentals and when to use it over `WHERE`
- Combine `WHERE` + `GROUP BY` + `HAVING`
- Apply `HAVING` with all aggregate functions
- Debug common `HAVING` errors

## Phase 4: Multi-Table Queries — Chapter 7

**Outcomes (in addition to Phase 3B):**
- Understand what JOINs solve and the 4 JOIN types (`INNER`, `LEFT`, `RIGHT`, `FULL OUTER`)
- Join 3+ tables together
- Find unmatched/orphan data with outer joins
- Combine JOINs with `WHERE`, `GROUP BY`, `HAVING`
- Use CTEs for readability
- Apply window functions (`RANK`, `ROW_NUMBER`, etc.)
- Build recursive CTEs for hierarchies

## Project Track: Employee Database (active)

Apply everything above to a realistic 8-table HR/payroll schema: multi-table JOINs, grouped reports, team and salary analytics. See [`PROJECTS/Employee-Database/`](../PROJECTS/Employee-Database/).

## Phase 5: Advanced Queries (planned — Chapter 8)

- Subqueries and derived tables
- `UNION` and set operations
- Performance tuning
- Advanced database design patterns

## Suggested Weekly Plan

| Week | Focus |
|---|---|
| 1 | Chapter 7 theory: `SIMPLE_JOINS.md` → `BASIC_JOINS.md` → `ADVANCED_JOINS.md` |
| 2 | Chapter 7 practice: `PRACTICESHEET/CHAPTER-7`, check against `ANSWERSHEETS/SHEET-7` |
| 3 | Apply to `PROJECTS/Employee-Database/`: write multi-table JOINs, combine with `GROUP BY` + `HAVING` |
| 4 | Complete `TEST SERIES/FIRST SERIES`, finalize project examples for a portfolio |
| 5+ | Begin Phase 5: subqueries, `UNION`, optimization |
