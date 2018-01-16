CREATE TABLE [dbo].[Work]
(
	[WorkId] BIGINT NOT NULL PRIMARY KEY IDENTITY ,
    [Title] NVARCHAR(60) NULL,
    [Description] NVARCHAR(MAX) NULL,
    [Requestor] NVARCHAR(256) NULL,
    [RequestorId] NVARCHAR(128) NULL,
	[RequestId] BIGINT NULL,
    [Worker] NVARCHAR(256) NULL,
    [WorkerId] NVARCHAR(128) NULL,
    [Tier] BIGINT NOT NULL DEFAULT 1,
    [Completion] FLOAT NULL
    CONSTRAINT Work_Completion_range_check
        CHECK(Completion >= 0 and Completion <= 1), 
    [Materials] NVARCHAR(MAX) NULL,
    [Tools] NVARCHAR(MAX) NULL,
    [Tasks] NVARCHAR(MAX) NULL, 
    CONSTRAINT [FK_Work_Request] FOREIGN KEY ([RequestId]) REFERENCES [Request]([RequestId])
)
