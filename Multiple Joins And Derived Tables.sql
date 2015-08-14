SELECT s.custom as customer_id, c.name, c.business_plan, count(s.id) as source_count, (sum(d.good)/sum(d.good+d.bad)) as gb_ratio, 
sum(asks) as ask, ((sum(d.department_size + d.company_size))/1073741824) as staff_count
FROM database.clients d
JOIN database.services s ON d.source=s.id
JOIN datasource.advertisement c ON s.custom=c.id
JOIN (
  SELECT js.custom
  FROM database.clients jd
  JOIN database.services js ON jd.service=js.id
  WHERE jd.time BETWEEN UNIX_TIMESTAMP('2015-08-01 00:00:00') AND UNIX_TIMESTAMP('2015-08-13 00:00:00')
  GROUP BY js.custom
  ORDER BY ((sum(jd.department_size + jd.company_size))/1073741824) DESC limit 10) as jtable 
  ON s.custom=jtable.custom
WHERE d.time BETWEEN UNIX_TIMESTAMP('2015-08-01 00:00:00') AND UNIX_TIMESTAMP('2015-08-13 00:00:00')
GROUP BY s.custom;
