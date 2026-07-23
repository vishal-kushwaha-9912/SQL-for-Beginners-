
## 🎯 Part 3:  HAVING Challenges (Challenges 1-12)

**Focus:** Complex real-world scenarios

### Challenge 1: Business Dashboard - Departments Over Quota

Create a query showing departments where the average employee salary exceeds the company average salary.

**Difficulty:** ⭐⭐⭐  
**Hint:** You might need a subquery or two-step thinking process

**Requirements:**
- Show: dept_id, dept_name, employee_count, avg_salary, company_avg_salary
- Filter: departments where avg_salary > company average
- Order: by avg_salary DESC

**Write Your Query:**
```sql

```

---

### Challenge 2: E-Commerce Analysis - Top Spending Customers

Find customers whose average order value is above the overall average order value AND have placed at least 5 orders.

**Difficulty:** ⭐⭐⭐  

**Requirements:**
- Show: customer_id, order_count, avg_order_value, overall_avg
- Filter: customers with above-average orders AND order_count >= 5
- Order: by avg_order_value DESC

**Write Your Query:**
```sql

```

---

### Challenge 3: Restaurant Analytics - Peak Hours

Find hours of the day where:
- At least 10 orders were placed
- Average order amount exceeds $50
- Total sales for that hour exceeds $500

**Difficulty:** ⭐⭐⭐⭐  

**Requirements:**
- Show: hour_of_day, order_count, avg_order_amount, total_sales
- Extract hour from order_date
- Order: by hour_of_day

**Write Your Query:**
```sql

```

---

### Challenge 4: Product Performance - Best Sellers

Find products where:
- They've been ordered at least 20 times
- Average rating is 4.0 or higher
- Total revenue from that product exceeds $5,000

**Difficulty:** ⭐⭐⭐⭐  

**Requires:** products, order_items, reviews tables (or similar)

**Requirements:**
- Show: product_id, product_name, order_count, avg_rating, total_revenue
- Multiple HAVING conditions
- Order: by total_revenue DESC

**Write Your Query:**
```sql

```

---

### Challenge 5: HR Reporting - Retention Analysis

Find departments where:
- Employees hired before 2023 represent at least 60% of the department
- Department has at least 10 employees
- Average salary is above $50,000

**Difficulty:** ⭐⭐⭐⭐⭐  

**Requires:** Calculation of percentage in HAVING

**Requirements:**
- Show: dept_id, total_employees, senior_employees, pct_senior, avg_salary
- Order: by pct_senior DESC

**Write Your Query:**
```sql

```

---

### Challenge 6: Marketing Analysis - High-Value Customer Segments

Segment customers by region, finding regions where:
- At least 25 customers exist
- Average customer lifetime value exceeds $10,000
- At least 3 customers have spent over $50,000 individually

**Difficulty:** ⭐⭐⭐⭐⭐  

**Requires:** Advanced HAVING logic

**Write Your Query:**
```sql

```

---

### Challenge 7: Inventory Management - Slow-Moving Stock Alert

Find products in each category where:
- The product is in a category with at least 5 items
- Average sale quantity for the product is below 10 units
- Category's average sale quantity is above 15 units (so this product is an outlier)

**Difficulty:** ⭐⭐⭐⭐  

**Write Your Query:**
```sql

```

---

### Challenge 8: Quality Control - Supplier Analysis

Find suppliers where:
- They supply at least 10 products
- Average product quality score (from products table) is below 3.5
- Total products supplied have generated less than $100,000 in revenue

**Difficulty:** ⭐⭐⭐⭐  

**Write Your Query:**
```sql

```

---

### Challenge 9: Time-Series Analysis - Seasonal Patterns

Find months across all years where:
- Total sales exceeded the annual average
- At least 100 orders were placed
- Average order size was above $75

**Difficulty:** ⭐⭐⭐⭐⭐  

**Requires:** Date manipulation and multiple aggregates

**Write Your Query:**
```sql

```

---

### Challenge 10: Multi-Criteria Filtering - Complex Business Logic

Find customer segments (by region) where:
- Average purchase frequency is at least once per 2 months
- Average order value is above $100
- Total lifetime revenue per customer exceeds $5,000
- At least 10 customers in the segment

**Difficulty:** ⭐⭐⭐⭐⭐  

**Write Your Query:**
```sql

```

---

### Challenge 11: Anomaly Detection - Performance Outliers

Find sales representatives where:
- They've made at least 50 sales
- Their average deal size is more than 20% above the company average
- Standard deviation of their deal sizes is below $5,000 (consistency)

**Difficulty:** ⭐⭐⭐⭐⭐  
**Note:** Requires STDDEV or similar function

**Write Your Query:**
```sql

```

---

### Challenge 12: Complex Business Scenario - Loyalty Program Eligibility

Identify customers eligible for premium loyalty program:
- At least 20 orders in the past year
- Average order value above $75 in the past year
- Has not returned more than 10% of their orders
- Not been inactive for more than 90 days (recent order exists)

**Difficulty:** ⭐⭐⭐⭐⭐  

**Requirements:**
- Show: customer_id, order_count, avg_order_value, return_rate, days_since_order
- Multiple WHERE and HAVING conditions
- Order: by order_count DESC

**Write Your Query:**
```sql

```

---

## 📊 Self-Assessment

Check your understanding:

**Beginner Level** (Exercises 1-5)
- [ ] I can write simple HAVING clauses
- [ ] I understand COUNT with HAVING
- [ ] I can use SUM with HAVING
- [ ] I can use AVG with HAVING
- [ ] I know HAVING filters groups, not rows

**Intermediate Level** (Exercises 6-10)
- [ ] I can combine WHERE and HAVING
- [ ] I can use multiple HAVING conditions
- [ ] I can use MIN and MAX with HAVING
- [ ] I can debug HAVING errors
- [ ] I understand performance implications

**Advanced Level** (Challenges 1-12)
- [ ] I can write complex real-world queries
- [ ] I can handle complex filtering scenarios
- [ ] I can calculate percentages in HAVING
- [ ] I can work with multiple tables
- [ ] I can optimize queries for performance

---

## 💡 Hints for Success

- **Beginner Exercises:** Focus on one aggregate at a time
- **Intermediate Exercises:** Think WHERE (rows) then HAVING (groups)
- **Advanced Challenges:** Write the query step-by-step
  1. First, write GROUP BY
  2. Then add WHERE conditions
  3. Finally, add HAVING conditions
  4. Test incrementally

---

## ✅ How to Verify Your Answers

1. Check the query syntax (no errors)
2. Compare row count with expected results
3. Sample a few rows to verify correctness
4. Check the answer key in `ANSWERSHEETS/SHEET-6/ANSWER.SQL`
5. If different from answer key, understand why your approach also works

---

## 📱 Resources

| Resource | Location |
|----------|----------|
| Theory Content | `CHAPTER-6/HAVING-COMPLETE.md` |
| Answer Key | `ANSWERSHEETS/SHEET-6/ANSWER.SQL` |
| Hints | `ANSWERSHEETS/SHEET-6/HINTS.SQL` |
| Sample Data | `ANSWERSHEETS/SHEET-6/SETUP.SQL` |
| Quick Reference | `QUICK-REFERENCES/CHAPTER-6-HAVING-CHEATSHEET.md` |

---

## 🎯 Next Steps After Completion

1. Review any exercises you found difficult
2. Try writing variations of the queries
3. Test with your own data
4. Move on to Chapter 7: JOINs
5. Come back and review if needed

---

** Practicing! 💪**

*Practice makes perfect. The more you write queries, the more natural HAVING becomes.*