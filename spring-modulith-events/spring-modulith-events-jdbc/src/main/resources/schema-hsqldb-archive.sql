CREATE TABLE IF NOT EXISTS EVENT_PUBLICATION_ARCHIVE
(
    ID               UUID NOT NULL,
    COMPLETION_DATE  TIMESTAMP(9),
    EVENT_TYPE       VARCHAR(512) NOT NULL,
    LISTENER_ID      VARCHAR(512) NOT NULL,
    PUBLICATION_DATE TIMESTAMP(9) NOT NULL,
    SERIALIZED_EVENT VARCHAR(4000) NOT NULL,
    PRIMARY KEY (ID)
    );
CREATE INDEX IF NOT EXISTS EVENT_PUBLICATION_ARCHIVE_BY_LISTENER_ID_AND_SERIALIZED_EVENT_IDX ON EVENT_PUBLICATION_ARCHIVE (LISTENER_ID, SERIALIZED_EVENT);
CREATE INDEX IF NOT EXISTS EVENT_PUBLICATION_ARCHIVE_BY_COMPLETION_DATE_IDX ON EVENT_PUBLICATION_ARCHIVE (COMPLETION_DATE);