
	
CREATE SEQUENCE ticket_id_seq start 1
    increment 1
    NO MAXVALUE
    CACHE 1;	
	
--DROP TABLE TICKET;	

CREATE TABLE TICKET
(
ID				INT NOT NULL DEFAULT nextval('ticket_id_seq'),
VERSION					INT,
ACCOUNT_ID				INT,
TAG_USER_ID				INT,
USER_DEVICE_ID			INT,
ACTION_ID				INT,
STATUS_ID				INT,
DESCRIPTION				VARCHAR(60),
OFFICE_LOCATION_ID		INT,
NOTES					VARCHAR(255),
CREATED_AGENT_ID		INT,
ASSIGNED_AGENT_ID		INT
);
ALTER SEQUENCE ticket_id_seq OWNED BY TICKET.ID;