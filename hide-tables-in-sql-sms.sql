-- HIDES TABLE FROM TABLES VIEW
------------------------------------------------------
EXEC sp_addextendedproperty
@name = N'microsoft_database_tools_support',
@value = 'Hide',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'table_name';

------------------------------------------------------
-- UN-HIDES TABLE FROM TABLES VIEW
------------------------------------------------------
EXEC sp_dropextendedproperty
@name = N'microsoft_database_tools_support',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'table_name';
