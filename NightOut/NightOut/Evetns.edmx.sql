
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/19/2013 00:01:29
-- Generated from EDMX file: C:\Users\Arnis\Desktop\New folder\NightOut\NightOut\Evetns.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Events];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_EventPerformer_Event]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EventPerformer] DROP CONSTRAINT [FK_EventPerformer_Event];
GO
IF OBJECT_ID(N'[dbo].[FK_EventPerformer_Performer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EventPerformer] DROP CONSTRAINT [FK_EventPerformer_Performer];
GO
IF OBJECT_ID(N'[dbo].[FK_PlaceEvent_Place]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlaceEvent] DROP CONSTRAINT [FK_PlaceEvent_Place];
GO
IF OBJECT_ID(N'[dbo].[FK_PlaceEvent_Event]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlaceEvent] DROP CONSTRAINT [FK_PlaceEvent_Event];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Events]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Events];
GO
IF OBJECT_ID(N'[dbo].[Performers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Performers];
GO
IF OBJECT_ID(N'[dbo].[Places]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Places];
GO
IF OBJECT_ID(N'[dbo].[EventPerformer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EventPerformer];
GO
IF OBJECT_ID(N'[dbo].[PlaceEvent]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlaceEvent];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Events'
CREATE TABLE [dbo].[Events] (
    [EventID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [TimeDate] nvarchar(max)  NOT NULL,
    [Price] nvarchar(max)  NOT NULL,
    [OpeningHours] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Performers'
CREATE TABLE [dbo].[Performers] (
    [PerformerID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Genre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Places'
CREATE TABLE [dbo].[Places] (
    [PlaceID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Location] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EventPerformer'
CREATE TABLE [dbo].[EventPerformer] (
    [Events_EventID] int  NOT NULL,
    [Performers_PerformerID] int  NOT NULL
);
GO

-- Creating table 'PlaceEvent'
CREATE TABLE [dbo].[PlaceEvent] (
    [Places_PlaceID] int  NOT NULL,
    [Events_EventID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [EventID] in table 'Events'
ALTER TABLE [dbo].[Events]
ADD CONSTRAINT [PK_Events]
    PRIMARY KEY CLUSTERED ([EventID] ASC);
GO

-- Creating primary key on [PerformerID] in table 'Performers'
ALTER TABLE [dbo].[Performers]
ADD CONSTRAINT [PK_Performers]
    PRIMARY KEY CLUSTERED ([PerformerID] ASC);
GO

-- Creating primary key on [PlaceID] in table 'Places'
ALTER TABLE [dbo].[Places]
ADD CONSTRAINT [PK_Places]
    PRIMARY KEY CLUSTERED ([PlaceID] ASC);
GO

-- Creating primary key on [Events_EventID], [Performers_PerformerID] in table 'EventPerformer'
ALTER TABLE [dbo].[EventPerformer]
ADD CONSTRAINT [PK_EventPerformer]
    PRIMARY KEY CLUSTERED ([Events_EventID], [Performers_PerformerID] ASC);
GO

-- Creating primary key on [Places_PlaceID], [Events_EventID] in table 'PlaceEvent'
ALTER TABLE [dbo].[PlaceEvent]
ADD CONSTRAINT [PK_PlaceEvent]
    PRIMARY KEY CLUSTERED ([Places_PlaceID], [Events_EventID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Events_EventID] in table 'EventPerformer'
ALTER TABLE [dbo].[EventPerformer]
ADD CONSTRAINT [FK_EventPerformer_Event]
    FOREIGN KEY ([Events_EventID])
    REFERENCES [dbo].[Events]
        ([EventID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Performers_PerformerID] in table 'EventPerformer'
ALTER TABLE [dbo].[EventPerformer]
ADD CONSTRAINT [FK_EventPerformer_Performer]
    FOREIGN KEY ([Performers_PerformerID])
    REFERENCES [dbo].[Performers]
        ([PerformerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EventPerformer_Performer'
CREATE INDEX [IX_FK_EventPerformer_Performer]
ON [dbo].[EventPerformer]
    ([Performers_PerformerID]);
GO

-- Creating foreign key on [Places_PlaceID] in table 'PlaceEvent'
ALTER TABLE [dbo].[PlaceEvent]
ADD CONSTRAINT [FK_PlaceEvent_Place]
    FOREIGN KEY ([Places_PlaceID])
    REFERENCES [dbo].[Places]
        ([PlaceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Events_EventID] in table 'PlaceEvent'
ALTER TABLE [dbo].[PlaceEvent]
ADD CONSTRAINT [FK_PlaceEvent_Event]
    FOREIGN KEY ([Events_EventID])
    REFERENCES [dbo].[Events]
        ([EventID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlaceEvent_Event'
CREATE INDEX [IX_FK_PlaceEvent_Event]
ON [dbo].[PlaceEvent]
    ([Events_EventID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------