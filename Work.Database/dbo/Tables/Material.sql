CREATE TABLE [dbo].[Material]
(
	[MaterialId] BIGINT NOT NULL PRIMARY KEY, 
    [Title] NVARCHAR(256) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [RequestId] BIGINT NULL, 
    [Tier] BIGINT NOT NULL DEFAULT 1, 
    [Quantity] BIGINT NULL, 
    [Quality] FLOAT NULL
    constraint Material_Quality_range_check
        check(Quality >= 0 and Quality <= 1), 
    [Properties] NVARCHAR(MAX) NULL,
    CONSTRAINT [FK_Material_Request] FOREIGN KEY ([RequestId]) REFERENCES [Request]([RequestId])
)
