
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/05/2017 21:59:43
-- Generated from EDMX file: C:\Users\Panichi\Desktop\AspNet\Aulas\AvaliacaoUm\Model\BancoFerramentaBD.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BancoFerramentaBD];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Ferramentas'
CREATE TABLE [dbo].[Ferramentas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Matricula] nvarchar(max)  NOT NULL,
    [Diametro] nvarchar(max)  NOT NULL,
    [LoteId] int  NOT NULL
);
GO

-- Creating table 'Lotes'
CREATE TABLE [dbo].[Lotes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Ferramentas'
ALTER TABLE [dbo].[Ferramentas]
ADD CONSTRAINT [PK_Ferramentas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Lotes'
ALTER TABLE [dbo].[Lotes]
ADD CONSTRAINT [PK_Lotes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [LoteId] in table 'Ferramentas'
ALTER TABLE [dbo].[Ferramentas]
ADD CONSTRAINT [FK_LoteFerramenta]
    FOREIGN KEY ([LoteId])
    REFERENCES [dbo].[Lotes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LoteFerramenta'
CREATE INDEX [IX_FK_LoteFerramenta]
ON [dbo].[Ferramentas]
    ([LoteId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------