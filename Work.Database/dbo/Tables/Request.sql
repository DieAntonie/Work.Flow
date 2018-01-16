CREATE TABLE [dbo].[Request]
(
	[RequestId] BIGINT NOT NULL PRIMARY KEY  IDENTITY,
    [Title] NVARCHAR(60) NULL,
    [Description] NVARCHAR(MAX) NULL,
    [Theme] SMALLINT NOT NULL DEFAULT 1,	-- TODO: Set Default to 'self-fulfillment' level which should be highest, most basic need should be numer 1
    [Requestor] NVARCHAR(256) NULL,
    [RequestorId] NVARCHAR(128) NULL,
    [Tier] BIGINT NOT NULL DEFAULT 1,
    [Completion] FLOAT NULL
    constraint Request_Completion_range_check
        check(Completion >= 0 and Completion <= 1),
    [Specifications] NVARCHAR(MAX) NULL,
    [WorkRequests] NVARCHAR(MAX) NULL,
    [Materials] NVARCHAR(MAX) NULL,
    [Tools] NVARCHAR(MAX) NULL,
    [Tasks] NVARCHAR(MAX) NULL
)
