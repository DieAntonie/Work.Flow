CREATE TABLE [dbo].[Task]
(
	[TaskId] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(256) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [WorkId] BIGINT NULL, 
    [Worker] NVARCHAR(256) NULL, 
    [WorkerId] NVARCHAR(128) NULL, 
    [RequestId] BIGINT NULL, 
    [Duration] TIME NULL, 
    [Tier] BIGINT NOT NULL DEFAULT 1, 
    [Completion] FLOAT NULL
    constraint Task_Completion_range_check
        check(Completion >= 0 and Completion <= 1), 
    [Materials] NVARCHAR(MAX) NULL, 
    [Tools] NVARCHAR(MAX) NULL,
    CONSTRAINT [FK_Task_Request] FOREIGN KEY ([RequestId]) REFERENCES [Request]([RequestId]),
    CONSTRAINT [FK_Task_Work] FOREIGN KEY ([WorkId]) REFERENCES [Work]([WorkId])
)
