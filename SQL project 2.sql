--1
select EmailAddress, PhoneNumber, [Name] from Person.EmailAddress as EmailID
left join Person.PersonPhone as phoneno on EmailID.BusinessEntityID=phoneno.BusinessEntityID
left join Person.PhoneNumberType as Phonety on phoneno.PhoneNumberTypeID=Phonety.PhoneNumberTypeID 

--2
select * from Sales.SalesOrderHeader
where month(OrderDate)=05 and Year(OrderDate)=2011

--3
select* from Sales.SalesOrderDetail as salesdetails left join Sales.SalesOrderHeader as salesheader
on salesdetails.SalesOrderID=salesheader.SalesOrderID
where salesheader.OrderDate='2011-05-31'

--4
select count(*) from Sales.SalesOrderHeader 
where month(OrderDate)=05 and Year(OrderDate)=2011

--5
select * from Sales.SalesOrderHeader as salesheader inner join Sales.SalesOrderDetail as salesdetails
on salesheader.SalesOrderID=salesdetails.SalesOrderID
where year(OrderDate)=2011
group by month(OrderDate)
order by salesdetails.OrderQty ASC

--6
select sum(OrderQty) from Sales.SalesOrderDetail as sal inner join Person.Person as per
on sal.ModifiedDate=per.ModifiedDate
where FirstName='Gustavo' and LastName='Achong'
