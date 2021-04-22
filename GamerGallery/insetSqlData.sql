create database userInformation
create table userLogin( UserID varchar(50) primary key not null, UserPass varchar(100) not null, SteamID varchar(200) not null)
INSERT INTO [dbo].[userLogin] ([UserID], [UserPass], [SteamID]) VALUES (N'Collin', N'password1', N'76561198037199400')
INSERT INTO [dbo].[userLogin] ([UserID], [UserPass], [SteamID]) VALUES (N'Jay', N'password2', N'76561197980945116')
INSERT INTO [dbo].[userLogin] ([UserID], [UserPass], [SteamID]) VALUES (N'Ryan', N'password3', N'76561198016757877')
INSERT INTO [dbo].[userLogin] ([UserID], [UserPass], [SteamID]) VALUES (N'Sutton', N'password4', N'76561198027554025')
INSERT INTO [dbo].[userLogin] ([UserID], [UserPass], [SteamID]) VALUES (N'Zach', N'password5', N'76561198071247386')