CREATE TABLE noteful_notes (
  noteid INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  notename TEXT NOT NULL,
  modified TIMESTAMP NOT NULL DEFAULT now(),
  folderid INTEGER
        REFERENCES noteful_folders(folderId) ON DELETE CASCADE NOT NULL,
  content TEXT)
