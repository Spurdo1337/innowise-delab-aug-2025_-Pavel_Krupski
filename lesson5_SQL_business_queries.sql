-- Часы и стоимость по сотруднику за месяц (например, 2025-07)
SELECT 
  e.employee_key,
  e.first_name || ' ' || e.last_name AS employee_name,
  SUM(f.hours_worked) AS total_hours,
  SUM(f.labor_cost) AS total_labor_cost,
  SUM(f.total_cost) AS total_cost
FROM fact_time_entries f
JOIN dim_employee e ON f.employee_key = e.employee_key
JOIN dim_date d ON f.date_key = d.date_key
WHERE d.year = 2025 AND d.month = 7
GROUP BY e.employee_key, employee_name
ORDER BY total_hours DESC;

-- Топ-10 задач по часам за период
SELECT
  t.task_key,
  t.title,
  p.project_name,
  SUM(f.hours_worked) AS hours_spent
FROM fact_time_entries f
JOIN dim_task t ON f.task_key = t.task_key
JOIN dim_project p ON f.project_key = p.project_key
JOIN dim_date d ON f.date_key = d.date_key
WHERE d.year = 2025
GROUP BY t.task_key, t.title, p.project_name
ORDER BY hours_spent DESC
LIMIT 10;

-- Сколько стоит обслуживание каждого клиента по месяцам?
SELECT
  d.year, d.month,
  p.client_name,
  SUM(f.total_cost) AS month_cost
FROM fact_time_entries f
JOIN dim_date d ON f.date_key = d.date_key
JOIN dim_project p ON f.project_key = p.project_key
GROUP BY d.year, d.month, p.client_name
ORDER BY d.year, d.month, month_cost DESC;