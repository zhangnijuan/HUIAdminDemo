
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/18/2018 22:04:58
-- Generated from EDMX file: E:\demo\Admin-H-ui-Demo\HUIAdmin\Model\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [HUIAdmin];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AdminSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdminSet];
GO
IF OBJECT_ID(N'[dbo].[RoleSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RoleSet];
GO
IF OBJECT_ID(N'[dbo].[ActionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActionSet];
GO
IF OBJECT_ID(N'[dbo].[Admin_RoleSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Admin_RoleSet];
GO
IF OBJECT_ID(N'[dbo].[Role_ActionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Role_ActionSet];
GO
IF OBJECT_ID(N'[dbo].[Admin_ActionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Admin_ActionSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AdminSet'
CREATE TABLE [dbo].[AdminSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(32)  NOT NULL,
    [Pwd] nvarchar(32)  NOT NULL,
    [ShowName] nvarchar(32)  NOT NULL,
    [Email] nvarchar(32)  NULL,
    [IsDelete] bit  NOT NULL,
    [CreateTime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RoleSet'
CREATE TABLE [dbo].[RoleSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RoleName] nvarchar(16)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [IsDelete] bit  NOT NULL
);
GO

-- Creating table 'ActionSet'
CREATE TABLE [dbo].[ActionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ActionName] nvarchar(32)  NOT NULL,
    [HttpMethod] nvarchar(8)  NOT NULL,
    [IsMenu] bit  NOT NULL,
    [Url] nvarchar(128)  NOT NULL,
    [ParentId] int  NOT NULL,
    [CreateTime] bit  NOT NULL,
    [IsDelete] bit  NOT NULL
);
GO

-- Creating table 'Admin_RoleSet'
CREATE TABLE [dbo].[Admin_RoleSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AdminId] int  NOT NULL,
    [RoleId] int  NOT NULL
);
GO

-- Creating table 'Role_ActionSet'
CREATE TABLE [dbo].[Role_ActionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RoleId] int  NOT NULL,
    [ActionId] smallint  NOT NULL
);
GO

-- Creating table 'Admin_ActionSet'
CREATE TABLE [dbo].[Admin_ActionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AdminId] int  NOT NULL,
    [ActionId] int  NOT NULL,
    [HasPermission] bit  NOT NULL,
    [IsDelete] bit  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'AdminSet'
ALTER TABLE [dbo].[AdminSet]
ADD CONSTRAINT [PK_AdminSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RoleSet'
ALTER TABLE [dbo].[RoleSet]
ADD CONSTRAINT [PK_RoleSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ActionSet'
ALTER TABLE [dbo].[ActionSet]
ADD CONSTRAINT [PK_ActionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Admin_RoleSet'
ALTER TABLE [dbo].[Admin_RoleSet]
ADD CONSTRAINT [PK_Admin_RoleSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Role_ActionSet'
ALTER TABLE [dbo].[Role_ActionSet]
ADD CONSTRAINT [PK_Role_ActionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Admin_ActionSet'
ALTER TABLE [dbo].[Admin_ActionSet]
ADD CONSTRAINT [PK_Admin_ActionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------