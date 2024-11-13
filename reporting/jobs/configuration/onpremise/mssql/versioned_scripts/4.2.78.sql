ALTER TABLE [BOLDRS_ItemAttribute] ADD FOREIGN KEY([AttributeType]) REFERENCES [BOLDRS_AttributeType] ([Id])
;
ALTER TABLE [BOLDRS_ItemAttribute] ADD FOREIGN KEY([CreatedById]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_ItemAttribute] ADD FOREIGN KEY([ModifiedById]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_ItemView] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ItemView] ADD FOREIGN KEY([ItemViewId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ItemView] ADD FOREIGN KEY([UserId]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_ItemTrash] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ItemTrash] ADD FOREIGN KEY([TrashedById]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_ItemTrashDeleted] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ItemTrashDeleted] ADD FOREIGN KEY([ItemTrashId]) REFERENCES [BOLDRS_ItemTrash] ([Id])
;
ALTER TABLE [BOLDRS_ItemTrashDeleted] ADD FOREIGN KEY([DeletedById]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_ItemVersion] ADD FOREIGN KEY([ItemTypeId]) REFERENCES [BOLDRS_ItemType] ([Id])
;
ALTER TABLE [BOLDRS_ItemVersion] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ItemVersion] ADD FOREIGN KEY([CreatedById]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_ItemLog] ADD FOREIGN KEY([ItemVersionId]) REFERENCES [BOLDRS_ItemVersion] ([Id])
;
ALTER TABLE [BOLDRS_ItemLog] ADD FOREIGN KEY([ItemLogTypeId]) REFERENCES [BOLDRS_ItemLogType] ([Id])
;
ALTER TABLE [BOLDRS_ItemLog] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ItemLog] ADD FOREIGN KEY([ParentId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ItemLog] ADD FOREIGN KEY([FromCategoryId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ItemLog] ADD FOREIGN KEY([ToCategoryId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ItemLog] ADD FOREIGN KEY([UpdatedUserId]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_ItemLog] ADD FOREIGN KEY([SourceTypeId]) REFERENCES [BOLDRS_Source] ([Id])
;

ALTER TABLE [BOLDRS_PermissionEntity] ADD FOREIGN KEY([ItemTypeId]) REFERENCES [BOLDRS_ItemType] ([Id])
;

ALTER TABLE [BOLDRS_UserPermission] ADD FOREIGN KEY([PermissionEntityId]) REFERENCES [BOLDRS_PermissionEntity] ([Id])
;
ALTER TABLE [BOLDRS_UserPermission] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_UserPermission] ADD FOREIGN KEY([UserId]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_UserPermission] ADD FOREIGN KEY ([SettingsTypeId]) REFERENCES [BOLDRS_SettingsType] (Id)
;
ALTER TABLE [BOLDRS_UserPermission] ADD FOREIGN KEY([ScopeGroupId]) REFERENCES [BOLDRS_Group] ([Id])
;
ALTER TABLE [BOLDRS_UserPermission] ADD FOREIGN KEY([ItemTypeId]) REFERENCES [BOLDRS_ItemType] ([Id])
;

ALTER TABLE [BOLDRS_GroupPermission] ADD FOREIGN KEY([PermissionEntityId]) REFERENCES [BOLDRS_PermissionEntity] ([Id])
;
ALTER TABLE [BOLDRS_GroupPermission] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_GroupPermission] ADD FOREIGN KEY([GroupId]) REFERENCES [BOLDRS_Group] ([Id])
;
ALTER TABLE [BOLDRS_GroupPermission] ADD FOREIGN KEY ([SettingsTypeId]) REFERENCES [BOLDRS_SettingsType] (Id)
;
ALTER TABLE [BOLDRS_GroupPermission] ADD FOREIGN KEY([ScopeGroupId]) REFERENCES [BOLDRS_Group] ([Id])
;
ALTER TABLE [BOLDRS_GroupPermission] ADD FOREIGN KEY([ItemTypeId]) REFERENCES [BOLDRS_ItemType] ([Id])
;

ALTER TABLE [BOLDRS_ScheduleDetail] ADD FOREIGN KEY([ScheduleId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ScheduleDetail] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ScheduleDetail] ADD FOREIGN KEY([RecurrenceTypeId]) REFERENCES [BOLDRS_RecurrenceType] ([Id])
;
ALTER TABLE [BOLDRS_ScheduleDetail] ADD FOREIGN KEY([ExportTypeId]) REFERENCES [BOLDRS_ExportType] ([Id])
;
ALTER TABLE [BOLDRS_ScheduleDetail] ADD FOREIGN KEY([CreatedById]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_ScheduleDetail] ADD FOREIGN KEY([ModifiedById]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_SubscribedUser] ADD FOREIGN KEY([ScheduleId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_SubscribedUser] ADD FOREIGN KEY([SubscribedById]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_SubscribedUser] ADD FOREIGN KEY([RecipientUserId]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_SubscribedGroup] ADD FOREIGN KEY([ScheduleId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_SubscribedGroup] ADD FOREIGN KEY([SubscribedById]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_SubscribedGroup] ADD FOREIGN KEY([RecipientGroupId]) REFERENCES [BOLDRS_Group] ([Id])
;

ALTER TABLE [BOLDRS_SubscrExtnRecpt] ADD FOREIGN KEY([ScheduleId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_SubscrExtnRecpt] ADD FOREIGN KEY([SubscribedById]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_ScheduleLogUser] ADD FOREIGN KEY([ScheduleStatusId]) REFERENCES [BOLDRS_ScheduleStatus] ([Id])
;
ALTER TABLE [BOLDRS_ScheduleLogUser] ADD FOREIGN KEY([ScheduleId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ScheduleLogUser] ADD FOREIGN KEY([DeliveredUserId]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_ScheduleLogGroup] ADD FOREIGN KEY([ScheduleStatusId]) REFERENCES [BOLDRS_ScheduleStatus] ([Id])
;
ALTER TABLE [BOLDRS_ScheduleLogGroup] ADD FOREIGN KEY([ScheduleId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ScheduleLogGroup] ADD FOREIGN KEY([GroupId]) REFERENCES [BOLDRS_Group] ([Id])
;
ALTER TABLE [BOLDRS_ScheduleLogGroup] ADD FOREIGN KEY([DeliveredUserId]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_SchdLogExtnRecpt] ADD FOREIGN KEY([ScheduleStatusId]) REFERENCES [BOLDRS_ScheduleStatus] ([Id])
;
ALTER TABLE [BOLDRS_SchdLogExtnRecpt] ADD FOREIGN KEY([ScheduleId]) REFERENCES [BOLDRS_Item] ([Id])
;

ALTER TABLE [BOLDRS_ScheduleLog] ADD FOREIGN KEY([ScheduleStatusId]) REFERENCES [BOLDRS_ScheduleStatus] ([Id])
;
ALTER TABLE [BOLDRS_ScheduleLog] ADD FOREIGN KEY([ScheduleId]) REFERENCES [BOLDRS_Item] ([Id])
;

ALTER TABLE [BOLDRS_Comment] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_Comment] ADD FOREIGN KEY([UserId]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_Comment] ADD FOREIGN KEY([ModifiedById]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_ItemWatch] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ItemWatch] ADD FOREIGN KEY([UserId]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_ItemCommentLog] ADD FOREIGN KEY([CurrentUserId]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_ItemCommentLog] ADD FOREIGN KEY([ItemCommentLogTypeId]) REFERENCES [BOLDRS_ItemCommentLogType] ([Id])
;
ALTER TABLE [BOLDRS_ItemCommentLog] ADD FOREIGN KEY([CommentId]) REFERENCES [BOLDRS_Comment] ([Id])
;
ALTER TABLE [BOLDRS_ItemCommentLog] ADD FOREIGN KEY([RepliedFor]) REFERENCES [BOLDRS_Comment] ([Id])
;
ALTER TABLE [BOLDRS_ItemCommentLog] ADD FOREIGN KEY([NotificationTo]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_FavoriteItem] ADD FOREIGN KEY([UserId]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_FavoriteItem] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;

ALTER TABLE [BOLDRS_PermissionAccEntity] ADD FOREIGN KEY([PermissionEntityId]) REFERENCES [BOLDRS_PermissionEntity] ([Id])
;
ALTER TABLE [BOLDRS_PermissionAccEntity] ADD FOREIGN KEY([PermissionAccessId]) REFERENCES [BOLDRS_PermissionAccess] ([Id])
;

ALTER TABLE [BOLDRS_UserPermissionLog] ADD FOREIGN KEY([LogTypeId]) REFERENCES [BOLDRS_PermissionLogType] ([Id])
;
ALTER TABLE [BOLDRS_UserPermissionLog] ADD FOREIGN KEY([UserPermissionId]) REFERENCES [BOLDRS_UserPermission] ([Id])
;
ALTER TABLE [BOLDRS_UserPermissionLog] ADD FOREIGN KEY([UserId]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_UserPermissionLog] ADD FOREIGN KEY([AffectedUserId]) REFERENCES [BOLDRS_User] ([Id])
;

ALTER TABLE [BOLDRS_GroupPermissionLog] ADD FOREIGN KEY([LogTypeId]) REFERENCES [BOLDRS_PermissionLogType] ([Id])
;
ALTER TABLE [BOLDRS_GroupPermissionLog] ADD FOREIGN KEY([GroupPermissionId]) REFERENCES [BOLDRS_GroupPermission] ([Id])
;
ALTER TABLE [BOLDRS_GroupPermissionLog] ADD FOREIGN KEY([UserId]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_GroupPermissionLog] ADD FOREIGN KEY([AffectedGroupId]) REFERENCES [BOLDRS_Group] ([Id])
;

ALTER TABLE [BOLDRS_SystemLog] ADD CONSTRAINT FK_SystemLog_SystemLogTypeId FOREIGN KEY([SystemLogTypeId]) REFERENCES [BOLDRS_SystemLogType] ([Id])
;
ALTER TABLE [BOLDRS_SystemLog] ADD CONSTRAINT FK_SystemLog_UpdatedUserId FOREIGN KEY([UpdatedUserId]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_SystemLog] ADD CONSTRAINT FK_SystemLog_LogStatusId FOREIGN KEY([LogStatusId]) REFERENCES [BOLDRS_LogStatus] ([Id])
;

ALTER TABLE [BOLDRS_LogField] ADD CONSTRAINT FK_LogField_ModuleId FOREIGN KEY([ModuleId]) REFERENCES [BOLDRS_LogModule] ([Id])
;

ALTER TABLE [BOLDRS_SystemLog] ADD CONSTRAINT FK_SystemLog_LogFieldId FOREIGN KEY([LogFieldId]) REFERENCES [BOLDRS_LogField] ([Id])
;

ALTER TABLE [BOLDRS_UserLog] ADD CONSTRAINT FK_UserLog_UserLogTypeId FOREIGN KEY([UserLogTypeId]) REFERENCES [BOLDRS_UserLogType] ([Id])
;
ALTER TABLE [BOLDRS_UserLog] ADD CONSTRAINT FK_UserLog_TargetUserId FOREIGN KEY([TargetUserId]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_UserLog] ADD CONSTRAINT FK_UserLog_CurrentUserId FOREIGN KEY([CurrentUserId]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_UserLog] ADD CONSTRAINT FK_UserLog_SourceTypeId FOREIGN KEY([SourceTypeId]) REFERENCES [BOLDRS_Source] ([Id])
;
ALTER TABLE [BOLDRS_UserLog] ADD CONSTRAINT FK_UserLog_LogStatusId FOREIGN KEY([LogStatusId]) REFERENCES [BOLDRS_LogStatus] ([Id])
;
ALTER TABLE [BOLDRS_UserLog] ADD CONSTRAINT FK_UserLog_LogFieldId FOREIGN KEY([LogFieldId]) REFERENCES [BOLDRS_LogField] ([Id])
;

ALTER TABLE [BOLDRS_GroupLog] ADD CONSTRAINT FK_GroupLog_GroupLogTypeId FOREIGN KEY([GroupLogTypeId]) REFERENCES [BOLDRS_GroupLogType] ([Id])
;
ALTER TABLE [BOLDRS_GroupLog] ADD CONSTRAINT FK_GroupLog_TargetGroupId FOREIGN KEY([TargetGroupId]) REFERENCES [BOLDRS_Group] ([Id])
;
ALTER TABLE [BOLDRS_GroupLog] ADD CONSTRAINT FK_GroupLog_CurrentUserId FOREIGN KEY([CurrentUserId]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_GroupLog] ADD CONSTRAINT FK_GroupLog_SourceTypeId FOREIGN KEY([SourceTypeId]) REFERENCES [BOLDRS_Source] ([Id])
;
ALTER TABLE [BOLDRS_GroupLog] ADD CONSTRAINT FK_GroupLog_LogStatusId FOREIGN KEY([LogStatusId]) REFERENCES [BOLDRS_LogStatus] ([Id])
;
ALTER TABLE [BOLDRS_GroupLog] ADD CONSTRAINT FK_GroupLog_LogFieldId FOREIGN KEY([LogFieldId]) REFERENCES [BOLDRS_LogField] ([Id])
;

ALTER TABLE [BOLDRS_ProcessOption] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;

ALTER TABLE [BOLDRS_ProcessOptionMap] ADD FOREIGN KEY([ProcessOptionId]) REFERENCES [BOLDRS_ProcessOption] ([Id])
;
ALTER TABLE [BOLDRS_ProcessOptionMap] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;

ALTER TABLE [BOLDRS_ReportDataSource] ADD FOREIGN KEY([ReportItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_ReportDataSource] ADD FOREIGN KEY([DataSourceItemId]) REFERENCES [BOLDRS_Item] ([Id])
;

ALTER TABLE [BOLDRS_DataSourceDetail] ADD FOREIGN KEY([DataSourceId]) REFERENCES [BOLDRS_Item] ([Id])
;

ALTER TABLE [BOLDRS_DatasetLinkage] ADD FOREIGN KEY([DatasetItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_DatasetLinkage] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;

ALTER TABLE [BOLDRS_ScheduleParameter] ADD FOREIGN KEY([ScheduleId]) REFERENCES [BOLDRS_Item] ([Id])
;

ALTER TABLE [BOLDRS_DeploymentReports] ADD FOREIGN KEY([CreatedById]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_DeploymentReports] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;

ALTER TABLE [BOLDRS_ExternalSites] ADD FOREIGN KEY([CreatedById]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_PublishedItem] ADD FOREIGN KEY([ItemId]) REFERENCES [BOLDRS_Item] ([Id])
;
ALTER TABLE [BOLDRS_PublishedItem] ADD FOREIGN KEY([CreatedById]) REFERENCES [BOLDRS_User] ([Id])
;
ALTER TABLE [BOLDRS_PublishJobs] ADD FOREIGN KEY([PublishId]) REFERENCES [BOLDRS_PublishedItem] ([Id])
;
ALTER TABLE [BOLDRS_PublishJobs] ADD FOREIGN KEY([UserId]) REFERENCES [BOLDRS_User] ([Id])
;

CREATE NONCLUSTERED INDEX [IX_BOLDRS_ScheduleDetail_ScheduleId] ON [BOLDRS_ScheduleDetail]([ScheduleId]) WITH (ONLINE = ON)

CREATE NONCLUSTERED INDEX [IX_BOLDRS_ScheduleLog_ScheduleId] ON [BOLDRS_ScheduleLog] ([ScheduleId]) INCLUDE ([ExecutedDate], [ScheduleStatusId]) WITH (ONLINE = ON)

CREATE NONCLUSTERED INDEX [IX_BOLDRS_Item] ON [BOLDRS_Item] ([IsActive], [ItemTypeId], [ParentId], [IsDraft]) INCLUDE ([CreatedById], [CreatedDate]) WITH (ONLINE = ON)

CREATE NONCLUSTERED INDEX [IX_BOLDRS_UserPermission] ON [BOLDRS_UserPermission] ([IsActive], [UserId], [ItemId], [PermissionEntityId]) INCLUDE ([PermissionAccessId]) WITH (ONLINE = ON)