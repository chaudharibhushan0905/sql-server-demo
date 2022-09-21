Select ISNULL('Bhushan','Chaudhari')

-- Coalesce returns the first non null value.
Select Coalesce('Welcome',null,'to sql training') ----Welcome

Select Coalesce(null,null,'to sql training') -- to sql training.

Select Coalesce(null,'Zensar',null) -- Zensar


Select Coalesce(null,'Zensar','Training')
