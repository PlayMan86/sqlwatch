﻿CREATE TABLE [dbo].[sqlwatch_meta_memory_clerk]
(
	[sql_instance] nvarchar(25) not null default @@SERVERNAME,
	[sqlwatch_mem_clerk_id] uniqueidentifier not null default newsequentialId(),
	[clerk_name] nvarchar(255) not null,
	constraint pk_sqlwatch_meta_memory_clerk primary key clustered (
		[sql_instance], [sqlwatch_mem_clerk_id]
		),
	constraint uq_sqlwatch_meta_memory_clerk unique (
		[sql_instance], [clerk_name]
		),
	constraint fk_sqlwatch_meta_memory_clerk_server foreign key ([sql_instance])
		references [dbo].[sqlwatch_meta_server] ([servername]) on delete cascade
)