CREATE TABLE IF NOT EXISTS
  courses (
    course_id BIGSERIAL PRIMARY KEY,
    pl_course_id bigint REFERENCES pl_courses ON DELETE SET NULL ON UPDATE CASCADE
  );
