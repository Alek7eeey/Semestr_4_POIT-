USE [UNIVER]
GO
/****** Object:  StoredProcedure [dbo].[Pr1]    Script Date: 23.04.2023 11:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Pr1] @p varchar(20), @c int output
as
begin
	set nocount on;
	select SUBJECT,SUBJECT_NAME, PULPIT from SUBJECT;
	set @c = (select count(*) from SUBJECT where SUBJECT.PULPIT = @p);
	
	print 'параметры: @p=' + @p + ',@c =' + cast(@c as varchar(3));
	declare @k int = (select count(*) from SUBJECT);
	return @k ;
end;

