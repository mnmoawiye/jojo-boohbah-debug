QUESTION 1
Error: Missing Column in GROUP BY
Explanation: The name column appears in SELECT but not in GROUP BY.

QUESTION 2
Error: Wrong Join
Explanation: Can't join boohbah directly to jojo_stand. Need to join through boohbah_stand_link.

QUESTION 3
Error: Wrong Column Name
Explanation: The column is called name, not boohbah_name.

QUESTION 4
Error: Unclear Column Reference
Explanation: boohbah_id exists in both tables. Must specify which table in the WHERE clause.

QUESTION 5
Error: Always-True Condition
Explanation: WHERE boohbah_id = boohbah_id is always true. Remove the WHERE clause to get the overall average.

QUESTION 6
Error: Multiple Values Returned
Explanation: The subquery returns two power values, but > needs only one. Use MAX() to return a single value.

QUESTION 7
Error: Missing Join Condition
Explanation: No connection between the tables causes a Cartesian product. Need to join through boohbah_stand_link.

QUESTION 8
Error: AVG() in WHERE Clause
Explanation: Can't use AVG() directly in WHERE. Calculate the average in a subquery first.

QUESTION 9
Error: Reversed Column Order
Explanation: Main query selects (boohbah_id, stand_id) but subquery returns (stand_id, boohbah_id). Order must match.
