SELECT E.name
FROM Employee E 
LEFT JOIN (SELECT managerID, count(managerID) as counts
from Employee 
group by managerId) as A ON E.id = A.managerID
WHERE A.counts >= 5
