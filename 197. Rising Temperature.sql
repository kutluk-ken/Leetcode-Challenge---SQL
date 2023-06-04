SELECT w1.id
FROM Weather w1, Weather w2
Where datediff(w1.recordDate, w2.recordDate) = 1 and w1.temperature > w2.temperature;
