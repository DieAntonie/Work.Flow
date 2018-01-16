CREATE TABLE [dbo].[Specification]
(
	[SpecificationId] INT NOT NULL PRIMARY KEY, 
    [Title] NVARCHAR(256) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [RequestId] BIGINT NULL, 
    [WorkId] BIGINT NULL, 
    [Completion] FLOAT NULL
    constraint Specification_Completion_range_check
        check(Completion >= 0 and Completion <= 1), 
    [Attachements] NVARCHAR(MAX) NULL,
    CONSTRAINT [FK_Specification_Request] FOREIGN KEY ([RequestId]) REFERENCES [Request]([RequestId]),
    CONSTRAINT [FK_Specification_Work] FOREIGN KEY ([WorkId]) REFERENCES [Work]([WorkId])
)
