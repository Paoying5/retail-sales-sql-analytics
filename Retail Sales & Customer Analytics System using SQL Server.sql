--- Phân tích nghiệp vụ ----
--- Tạo database --- 
create database RetailAnalytics;
go

--- Designed and created a relational database using SQL Server

use RetailAnalytics
go

--- Tạo bảng -----
create table Stores(
	StoreID int primary key,
	StoreName nvarchar(100),
	City nvarchar(50)
);

create table Products( 
	ProductID int primary key,
	ProductName nvarchar(100),
	Category varchar(50),
	Price Decimal(12,2)
);

create table Customers(
	CustomerID int primary key,
	Gender nvarchar(10),
	BirthYear int,
	City nvarchar(50)
);

create table Sales(
	SaleID int primary key,
	StoreID int,
	CustomerID int,
	SaleDate date,
	TotalAmount decimal(14,2)

	foreign key(StoreID) references Stores(StoreID),
	foreign key(CustomerID) references Customers(CustomerID)
);

create table SaleDetails(
	SaleID int,
	ProductID int,
	Quantity int,
	UnitPrice decimal(12,2),

	Primary key (SaleID, ProductID),
	foreign key(SaleID) references Sales(SaleID),
	foreign key(ProductID) references Products(ProductID)
);

--- Insert dữ liệu mẫu ----
INSERT INTO Stores VALUES
(1, N'Cửa hàng Phú Nhuận', N'HCM'),
(2, N'Cửa hàng Quận 1', N'HCM'),
(3, N'Cửa hàng Hà Nội', N'Hà Nội');

INSERT INTO Products VALUES
(1, N'Nhẫn Vàng', N'Trang sức', 5000000),
(2, N'Dây chuyền', N'Trang sức', NULL),
(3, N'Bông tai', N'Trang sức', 2500000);

INSERT INTO Customers VALUES
(1, N'Nam', 1998, N'HCM'),
(2, N'Nữ', NULL, N'HCM'),
(3, N'Nữ', 2000, N'Hà Nội');


INSERT INTO Sales VALUES
(1001, 1, 1, '2025-01-10', 7500000),
(1002, 1, 2, '2025-01-11', 2500000),
(1003, 2, 3, '2025-02-01', 5000000);


INSERT INTO SaleDetails VALUES
(1001, 1, 1, 5000000),
(1001, 3, 1, 2500000),
(1002, 3, 1, 2500000),
(1003, 1, 1, 5000000);

---- Data cleaning -----
update Products
set Price = 0
where Price is null;

update Customers
set BirthYear = 1990
where BirthYear is null;
--- Performed data cleaning and standardization using SQL

----Truy vấn phân tích dữ liệu (CORE SQL SKILL)------------
--- Doanh thu theo cửa hàng ----
---- Cửa hàng nào mang lại doanh thu cao nhất?
select
	s.StoreName,
	SUM(sa.TotalAmount) as TotalRevenue
from Sales sa
join Stores s on sa.StoreID = s.StoreID
group by s.StoreName;

----- Analyzed revenue by store using SQL JOIN and GROUP BY ----

---- Doanh thu theo tháng
select 
	YEAR(SaleDate) as Year,
	MONTH(SaleDate) as Month,
	SUM(TotalAmount) as MonthlyRevenue
from Sales
group by YEAR(SaleDate), MONTH(SaleDate)
Order by Year, Month;

---- Top sản phẩm bán chạy (theo số lượng)
select 
	p.ProductName,
	SUM(sd.Quantity) as TotalQuantity
from SaleDetails sd
join Products p on sd.ProductID	= p.ProductID
group by p.ProductName
order by TotalQuantity desc;

---- Giá trị đơn hàng trung bình (AOV)
select 
	AVG(TotalAmount) as AvgOrderValue
from Sales;

----- Phân tích khách hàng quay lại (WINDOW FUNCTION)
select 
	CustomerID,
	count(*) as NumberOfOrders,
	case	
		when count(*) > 1 then N'Khách Hàng Quay Lại'
		else N'Khách Mới'
	end as CustomerType
from Sales
group by CustomerID;

----- VIEW & STORED PROCEDURE
---- Tạo VIEW doanh thu theo cửa hàng
create view vw_RevenueByStore as
select 
	s.StoreName,
	SUM(sa.TotalAmount) as TotalRevenue
from Sales sa
join Stores s on sa.StoreID = s.StoreID
group by s.StoreName;

SELECT * FROM vw_RevenueByStore;

---- VIEW doanh thu theo tháng
create view vw_MonthlyRevenue as
select 
		YEAR(SaleDate) as Year,
		MONTH(SaleDate) as Month,
		SUM(TotalAmount) as Revenue
from Sales
group by YEAR(SaleDate), MONTH(SaleDate);

--- Stored Procedure: báo cáo theo khoảng thời gian
create PROCEDURE sp_Revenue_By_DateRange
		@FromDate DATE,
		@ToDate DATE
as
begin
		select s.StoreName,
			sum(sa.TotalAmount) as revenue
		from Sales sa
		join Stores s on sa.StoreID = s.StoreID
		where sa.SaleDate between @FromDate and @ToDate
		group by s.StoreName;
end;

EXEC sp_Revenue_By_DateRange 
    '2025-01-01', 
    '2025-01-31';

------ Khi dữ liệu lớn, làm sao để query nhanh hơn?
create NONCLUSTERED INDEX idx_Sales_SaleDate
on Sales(SaleDate);

create NONCLUSTERED INDEX idx_Sales_StoreID
on Sales(StoreID);

create NONCLUSTERED INDEX idx_Sales_CustomerID
on Sales(CustomerID);

---- chuẩn hóa lại dữ liệu 
---- Tách Category ra bảng riêng (nâng cao – optional)
create table Categories (
		CategoryID int primary key,
		CategoryName nvarchar(50)
);

----- CTE (Common Table Expression)
with MonthlyRevenue as(
	select 
			YEAR(SaleDate) as Year,
			MONTH(SaleDate) as Month,
			SUM(TotalAmount) as Revenue
	from Sales
	group by YEAR(SaleDate), MONTH(SaleDate)
)
Select * 
from MonthlyRevenue
where Revenue > 3000000;


-- Transaction
BEGIN TRY
    BEGIN TRAN;

    INSERT INTO Sales (SaleID, StoreID, CustomerID, SaleDate, TotalAmount)
    VALUES (1004, 1, 1, GETDATE(), 6000000);

    INSERT INTO SaleDetails (SaleID, ProductID, Quantity, UnitPrice)
    VALUES 
        (1004, 1, 1, 5000000),
        (1004, 3, 1, 1000000);

    COMMIT;
END TRY
BEGIN CATCH
    ROLLBACK;
    THROW;
END CATCH;


--- tổng tiền của một hóa đơn không bao giờ là số âm
ALTER TABLE Sales
ADD CONSTRAINT CK_Sales_TotalAmount_Positive
CHECK (TotalAmount >= 0);

--- SaleDate không được ở tương lai
ALTER TABLE Sales
ADD CONSTRAINT CK_Sales_SaleDate_NotFuture
CHECK (SaleDate <= GETDATE());

--- Quantity phải > 0
ALTER TABLE SaleDetails
ADD CONSTRAINT CK_SaleDetails_Quantity_Positive
CHECK (Quantity > 0);

--- UnitPrice không âm
ALTER TABLE SaleDetails
ADD CONSTRAINT CK_SaleDetails_UnitPrice_Positive
CHECK (UnitPrice >= 0);
