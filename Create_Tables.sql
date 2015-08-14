DROP TABLE fencing_club;
CREATE TABLE fencing_club
(proposed_date date NOT NULL,
 individual char(24),
  proposed_time TIME,
  call_made TIME,
  length_min numeric,
  result varchar(255)
) WITH 
(OIDS=FALSE
);

INSERT INTO fencing_club VALUES
('2015-07-20', 'Anna Selina', '11:00:00', '11:05:00', 0, 'Technical difficulties-Rescheduled'),
('2015-07-21', 'Anna Selina', '15:00:00', '15:10:00', 28, 'Pleasant chat and referred to Peggy Chong'),
('2015-07-22', 'Stan Hsing', '12:17:00', '12:17:00', .5, 'Stan was late Tyler had commitment at 12:30-Rescheduled'),
('2015-07-23', 'Stan Hsing', '14:00:00', NULL, 0, 'Stan never called');

Select * from fencing_club;
