# Course Structure — Full Breakdown

Detailed topic lists, quality ratings, and per-chapter outcomes. For the quick-reference table, see the [main README](../README.md#course-structure).

---

## Phase 1: Core Foundations — ✅ Complete

### Chapter 1: SELECT & FROM (Quality: 8.5/10)

- SELECT statement and DISTINCT keyword
- Column aliases with AS
- PEMDAS & calculations
- Data types and NULL values
- Writing SQL comments

9 exercises · 5 challenges · [`CHAPTER-1/SELECT-FROM.md`](../CHAPTER-1/SELECT-FROM.md)

---

## Phase 2: Filtering & Sorting — ✅ Complete

### Chapter 2: WHERE Clause (Quality: 9–10/10)

- 8 comparison operators (`=`, `!=`, `>`, `<`, `>=`, `<=`, `BETWEEN`, `IN`)
- Logical operators (AND, OR, NOT)
- LIKE with wildcards, NULL handling
- 10+ common mistakes covered

10 exercises · 7 challenges · [`CHAPTER-2/WHERE-CLAUSE-COMPLETE.md`](../CHAPTER-2/WHERE-CLAUSE-COMPLETE.md)

### Chapter 3: ORDER BY (Quality: 8–8.5/10)

- ASC/DESC, multi-column sorting
- Column position and alias sorting
- NULL value sorting, SQL execution order

15 exercises · 7 challenges · [`CHAPTER-3/ORDER-BY-COMPLETE.md`](../CHAPTER-3/ORDER-BY-COMPLETE.md)

---

## Phase 3: Aggregation — ✅ Complete

### Chapter 4: Aggregate Functions (Quality: 9–10/10, Expert Edition)

`COUNT`, `SUM`, `AVG`, `MIN`, `MAX` — plus NULL handling (the #1 source of beginner errors), `WHERE` vs `HAVING`, `COUNT(DISTINCT)`, and real-world business templates.

4500+ lines · 6 diagrams · 12 exercises · 8 challenges · [`CHAPTER-4/AGGREGATE-FUNCTIONS-COMPLETE.md`](../CHAPTER-4/AGGREGATE-FUNCTIONS-COMPLETE.md)

### Chapter 5: GROUP BY (Quality: 9–10/10, Expert Edition)

Grouping by one/multiple columns, combining WHERE + GROUP BY, HAVING, NULL handling, COUNT(DISTINCT) per group, anti-patterns.

**Execution order:** `FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY`

4000+ lines · 10+ diagrams · 13 exercises · 12 challenges · [`CHAPTER-5/GROUP-BY-COMPLETE.md`](../CHAPTER-5/GROUP-BY-COMPLETE.md)

---

## Phase 3B: Advanced Filtering — ✅ Complete

### Chapter 6: HAVING Clause (Quality: 9–10/10, Expert Edition)

WHERE vs HAVING (row vs group filtering), HAVING without GROUP BY, database differences across MySQL/SQL Server/PostgreSQL/Oracle, debugging checklist.

4000+ lines · 22 sections · 5+ diagrams · 12 exercises · 8 challenges · [`CHAPTER-6/HAVING.md`](../CHAPTER-6/HAVING.md)

---

## Phase 4: Multi-Table Queries — 🔶 70% Complete

### Chapter 7: JOINs (Quality: 9/10, Beginner → Advanced)

Three guides, in order:

| File                                                  | Level                                             |
| ----------------------------------------------------- | ------------------------------------------------- |
| [`SIMPLE_JOINS.md`](../CHAPTER-7/SIMPLE_JOINS.md)     | Beginner — real-world analogies                   |
| [`BASIC_JOINS.md`](../CHAPTER-7/BASIC_JOINS.md)       | Core — INNER / LEFT / RIGHT / FULL OUTER          |
| [`ADVANCED_JOINS.md`](../CHAPTER-7/ADVANCED_JOINS.md) | Advanced — CTEs, window functions, recursive CTEs |

Covers self-joins, cross joins, multi-table joins (3+ tables), finding unmatched/orphan data, and join performance.

5000+ lines · 40+ examples · 15 exercises · 10 challenges · 3 projects

**JOIN types at a glance:**

| Type              | Returns                            | Use when                                |
| ----------------- | ---------------------------------- | --------------------------------------- |
| `INNER JOIN`      | Only matching rows                 | You want perfect matches only           |
| `LEFT JOIN`       | All from left + matches from right | You want everything from the left table |
| `RIGHT JOIN`      | All from right + matches from left | Rare — usually rewritten as `LEFT JOIN` |
| `FULL OUTER JOIN` | Everything from both               | You want all data regardless of match   |

```sql
-- Find unmatched data (LEFT JOIN + IS NULL)
SELECT e.Name
FROM Employees e
LEFT JOIN Salaries s ON e.EmployeeID = s.EmployeeID
WHERE s.EmployeeID IS NULL;  -- employees with no salary record
```

### Chapter 8: Subqueries & Advanced Topics — ⏳ Planned (Phase 5)

Subqueries and derived tables, UNION and set operations, performance tuning, real-world database design.

---

## Learning Outcomes By Phase

<details>
<summary>Phase 1 — Foundations</summary>

- Write SELECT queries to retrieve specific columns
- Use DISTINCT to find unique values
- Create column aliases with AS
- Perform calculations with correct order of operations
- Handle NULL values and data types
</details>

<details>
<summary>Phase 2 — Filtering & Sorting</summary>

- Filter with all 8 WHERE comparison operators
- Combine conditions with AND, OR, NOT
- Use LIKE for pattern matching; handle operator precedence
- Sort with ORDER BY (single/multi-column, NULL handling)
</details>

<details>
<summary>Phase 3 — Aggregation</summary>

- Use all 5 aggregate functions correctly, including NULL edge cases
- Understand WHERE vs HAVING
- Count unique values with COUNT(DISTINCT)
- Group by one or multiple columns
- Execute queries in the correct logical order
</details>

<details>
<summary>Phase 3B — Advanced Filtering</summary>

- Filter groups after aggregation with HAVING
- Combine WHERE + GROUP BY + HAVING
- Debug common HAVING errors
</details>

<details>
<summary>Phase 4 — Multi-Table Queries (70%)</summary>

- Write INNER, LEFT, RIGHT, and FULL OUTER JOINs
- Join 3+ tables; find unmatched/orphan data
- Combine JOINs with WHERE, GROUP BY, HAVING
- Use CTEs and window functions (RANK, ROW_NUMBER)
- Build recursive CTEs for hierarchies
</details>
