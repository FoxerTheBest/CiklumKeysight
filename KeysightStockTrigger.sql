   CREATE TRIGGER trgStockUpdate
   ON OrdersList
   FOR INSERT
   AS
   UPDATE Product SET Product.Stock_Quantity=(P.Stock_Quantity-1)
   FROM Product AS P INNER JOIN
   INSERTED AS D ON D.Identifier=P.Identifier