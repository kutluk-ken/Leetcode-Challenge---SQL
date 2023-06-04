SELECT DISTINCT p.product_id, round(sum(units*price)/ sum(units),2) AS average_price 
FROM Prices p join UnitsSold u on p.product_id = u.product_id and u.purchase_date between p.start_date and p.end_date
group by p.product_id
