CREATE TABLE BOLDRS_EmailActivityLog(
    Id  SERIAL PRIMARY KEY NOT NULL,
    Event varchar(255) NOT NULL,
    RecipientEmail varchar(255) NOT NULL,
    SenderEmail varchar(255) NOT NULL,
    MailSubject varchar(255) NOT NULL,
    MailBody text NULL,
    CreatedDate timestamp NOT NULL,
    ModifiedDate timestamp  NULL,
    InitiatedBy int NOT NULL,
    UserId int NULL,
    GroupId int NULL,
    ItemId uuid NULL,
    CommentId int NULL,
    PermissionId int NULL,
    Status int NOT NULL,
    StatusMessage text NULL,
    IsActive smallint NOT NULL)
;

ALTER TABLE BOLDRS_EmailActivityLog  ADD  FOREIGN KEY(UserId) REFERENCES BOLDRS_User (Id)
;
ALTER TABLE BOLDRS_EmailActivityLog  ADD  FOREIGN KEY(GroupId) REFERENCES BOLDRS_Group (Id)
;
ALTER TABLE BOLDRS_EmailActivityLog  ADD  FOREIGN KEY(ItemId) REFERENCES BOLDRS_Item (Id)
;
ALTER TABLE BOLDRS_EmailActivityLog  ADD FOREIGN KEY(CommentId) REFERENCES BOLDRS_Comment (Id)
;