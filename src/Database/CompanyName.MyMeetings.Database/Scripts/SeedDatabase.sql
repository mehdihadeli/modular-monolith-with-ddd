﻿-- Add Test Member
INSERT INTO users.UserRegistrations VALUES 
(
	'2EBFECFC-ED13-43B8-B516-6AC89D51C510',
	'testMember@mail.com',
	'testMember@mail.com',
	'ANO7TKjxh/Dom6LG0dyoQfJciLca+e1itHQ6BZMQYs+aMbKL9MjCv6bq4gy4+MRY0w==', --  hash value <-- password is --> testMemberPass
	'John',
	'Doe',
	'John Doe',
	'Confirmed',
	GETDATE(),
	GETDATE()
)

INSERT INTO users.Users VALUES
(
	'2EBFECFC-ED13-43B8-B516-6AC89D51C510',
	'testMember@mail.com',
	'testMember@mail.com',
	'ANO7TKjxh/Dom6LG0dyoQfJciLca+e1itHQ6BZMQYs+aMbKL9MjCv6bq4gy4+MRY0w==', -- password is --> testMemberPass
	1,
	'John',
	'Doe',
	'John Doe'
)

INSERT INTO meetings.Members VALUES
(
	'2EBFECFC-ED13-43B8-B516-6AC89D51C510',
	'testMember@mail.com',
	'testMember@mail.com',
	'John',
	'Doe',
	'John Doe'
)

INSERT INTO users.UserRoles VALUES
('2EBFECFC-ED13-43B8-B516-6AC89D51C510', 'Member')

-- Add Test Administrator
INSERT INTO users.UserRegistrations VALUES 
(
	'4065630E-4A4C-4F01-9142-0BACF6B8C64D',
	'testAdmin@mail.com',
	'testAdmin@mail.com',
	'AK0qplH5peUHwnCVuzW9zy0JGZTTG6/Ji88twX+nw9JdTUwqa3Wol1K4m5aCG9pE2A==', -- password is --> testAdminPass
	'Jane',
	'Doe',
	'Jane Doe',
	'Confirmed',
	GETDATE(),
	GETDATE()
)

INSERT INTO users.Users VALUES
(
	'4065630E-4A4C-4F01-9142-0BACF6B8C64D',
	'testAdmin@mail.com',
	'testAdmin@mail.com',
	'AK0qplH5peUHwnCVuzW9zy0JGZTTG6/Ji88twX+nw9JdTUwqa3Wol1K4m5aCG9pE2A==', -- password is --> testAdminPass
	1,
	'Jane',
	'Doe',
	'Jane Doe'
)

INSERT INTO users.UserRoles VALUES
('4065630E-4A4C-4F01-9142-0BACF6B8C64D', 'Administrator')

-- Roles to Permissions

INSERT INTO users.[Permissions] ([Code], [Name]) VALUES
	-- Meetings
	('GetMeetingGroupProposals', 'GetMeetingGroupProposals'),
	('ProposeMeetingGroup', 'ProposeMeetingGroup'),
	('CreateNewMeeting','CreateNewMeeting'),
	('EditMeeting','EditMeeting'),
	('AddMeetingAttendee','AddMeetingAttendee'),
	('RemoveMeetingAttendee','RemoveMeetingAttendee'),
	('AddNotAttendee','AddNotAttendee'),
	('ChangeNotAttendeeDecision','ChangeNotAttendeeDecision'),
	('SignUpMemberToWaitlist','SignUpMemberToWaitlist'),
	('SignOffMemberFromWaitlist','SignOffMemberFromWaitlist'),
	('SetMeetingHostRole','SetMeetingHostRole'),
	('SetMeetingAttendeeRole','SetMeetingAttendeeRole'),
	('CancelMeeting','CancelMeeting'),
	('GetAllMeetingGroups','GetAllMeetingGroups'),
	('EditMeetingGroupGeneralAttributes','EditMeetingGroupGeneralAttributes'),
	('JoinToGroup','JoinToGroup'),
	('LeaveMeetingGroup','LeaveMeetingGroup'),
	('AddMeetingComment','AddMeetingComment'),
	('EditMeetingComment','EditMeetingComment'),
	('DeleteMeetingComment','DeleteMeetingComment'),

	-- Administration
	('AcceptMeetingGroupProposal','AcceptMeetingGroupProposal'),

	-- Payments
	('RegisterPayment','RegisterPayment'),
	('BuySubscription','BuySubscription'),
	('RenewSubscription','RenewSubscription'),
	('CreatePriceListItem','CreatePriceListItem'),
	('ActivatePriceListItem','ActivatePriceListItem'),
	('DeactivatePriceListItem','DeactivatePriceListItem'),
	('ChangePriceListItemAttributes','ChangePriceListItemAttributes')

-- Meetings
INSERT INTO users.RolesToPermissions VALUES ('Member', 'GetMeetingGroupProposals')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'ProposeMeetingGroup')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'CreateNewMeeting')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'EditMeeting')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'AddMeetingAttendee')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'RemoveMeetingAttendee')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'AddNotAttendee')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'ChangeNotAttendeeDecision')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'SignUpMemberToWaitlist')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'SignOffMemberFromWaitlist')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'SetMeetingHostRole')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'SetMeetingAttendeeRole')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'CancelMeeting')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'GetAllMeetingGroups')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'EditMeetingGroupGeneralAttributes')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'JoinToGroup')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'LeaveMeetingGroup')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'AddMeetingComment')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'EditMeetingComment')

-- Administration
INSERT INTO users.RolesToPermissions VALUES ('Administrator', 'AcceptMeetingGroupProposal')

-- Payments
INSERT INTO users.RolesToPermissions VALUES ('Member', 'RegisterPayment')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'BuySubscription')
INSERT INTO users.RolesToPermissions VALUES ('Member', 'RenewSubscription')
INSERT INTO users.RolesToPermissions VALUES ('Administrator', 'CreatePriceListItem')
INSERT INTO users.RolesToPermissions VALUES ('Administrator', 'ActivatePriceListItem')
INSERT INTO users.RolesToPermissions VALUES ('Administrator', 'DeactivatePriceListItem')
INSERT INTO users.RolesToPermissions VALUES ('Administrator', 'ChangePriceListItemAttributes')