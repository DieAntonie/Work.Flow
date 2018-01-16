CREATE TABLE [dbo].[Tool]
(
	[ToolId] BIGINT NOT NULL PRIMARY KEY, 
    [Title] NVARCHAR(256) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [RequestId] BIGINT NULL, 
    [Tier] BIGINT NULL, 
    [Quality] FLOAT NULL
    constraint Tool_Quality_range_check
        check(Quality >= 0 and Quality <= 1), 
    [Properties] NVARCHAR(MAX) NULL, 
    CONSTRAINT [FK_Tool_Request] FOREIGN KEY ([RequestId]) REFERENCES [Request]([RequestId])
)
