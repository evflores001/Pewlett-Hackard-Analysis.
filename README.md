# Pewlett-Hackard-Analysis
---

## Overview of the analysis:

The purpose of this analysis was to identify the number of retiring employees from a company in order make proper adjustments considering the number of employees retiring. Using the given csv files, as well as SQL and PGadmin, the unique_titles, retirement_titles, retiring_title, and mentorship_eligibility tables were formed using JOIN functions. These tables allowed better insight into the number of employees retiring.

---
## Results:

- The data contains 300,024 employee records, from which, 41,380 will be retiring
- Of the nine different departments, only five have managers.
- The mentorship eligibility table contains 1,549 rows of employees when pulling the distinct count of employees who are still currently employeed
- There are 133,776 rows in the retirements title table before runnning a distinct count on function, thus the table contains duplicate employee numbers and names but it is because the employee may have had multiple roles with the company
---
## Summary:

1. Number of roles to be filled due to the "silver tsunami"
  - The total number of roles to be filled is 90,398.
  
2. Are there enough qualified, retirement-ready employees in the departments to menntor the next gen employees?
  - For most departments yes, but the assistant engineer department only has 1,761 employees and managers only have 2 employees, which may not be enough to mentor a large incoming workforce.
