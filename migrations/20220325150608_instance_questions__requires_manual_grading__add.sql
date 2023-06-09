ALTER TABLE instance_questions
ADD COLUMN IF NOT EXISTS requires_manual_grading BOOLEAN NOT NULL DEFAULT FALSE;

ALTER TABLE instance_questions
ADD COLUMN IF NOT EXISTS assigned_grader BIGINT;

ALTER TABLE instance_questions
ADD COLUMN IF NOT EXISTS last_grader BIGINT;

ALTER TABLE instance_questions
ADD FOREIGN KEY (assigned_grader) REFERENCES users ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE instance_questions
ADD FOREIGN KEY (last_grader) REFERENCES users ON DELETE SET NULL ON UPDATE CASCADE;
