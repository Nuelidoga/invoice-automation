-- Run once in the Azure portal: SQL database > Query editor
CREATE TABLE dbo.Invoices (
    Id            INT IDENTITY(1,1) PRIMARY KEY,
    Vendor        NVARCHAR(200)  NOT NULL,
    InvoiceNumber NVARCHAR(100)  NULL,
    Total         DECIMAL(18,2)  NOT NULL,
    Currency      NVARCHAR(10)   NULL,
    DueDate       NVARCHAR(30)   NULL,
    Decision      NVARCHAR(100)  NOT NULL,
    ReceivedFrom  NVARCHAR(320)  NULL,
    ProcessedAtUtc DATETIME2     NOT NULL DEFAULT SYSUTCDATETIME()
);
