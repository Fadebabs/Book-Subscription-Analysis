SELECT * FROM subb.actions2load limit 20;

/*What events are most common?*/

SELECT event_type, COUNT(*) as event_count
FROM actions2load
GROUP BY event_type
ORDER BY event_count DESC
LIMIT 1;

/*What events are least common?*/

SELECT event_type, COUNT(*) as event_count
FROM actions2load
GROUP BY event_type
ORDER BY event_count ASC
LIMIT 1;

/*Get the account id with the highest number of events*/

SELECT account_id, COUNT(*) as event_count
FROM actions2load
GROUP BY account_id
ORDER BY event_count DESC
LIMIT 1;

/*Get the account id with the least number of events*/

SELECT account_id, COUNT(*) as event_count
FROM actions2load
GROUP BY account_id
ORDER BY event_count ASC
LIMIT 1;

/*How many times events occurred based on different times of the day*/

SELECT DATE_FORMAT(event_time, '%H:%i') as time_of_the_day, COUNT(*) as event_count
FROM actions2load
GROUP BY time_of_the_day
ORDER BY time_of_the_day;

/*Brief Overview of the queries
the most common type of event of the subscribers is ReadingOwnedBook with 24,628 count

the least common type of event of the subscribers is UnknownOriginLivebookLinkOpened woth 1 count

the account id with the highest number of events is caffe2b03e6057845c52212acaaa1a34 

the account id with the least number of events is eb19e0af88f04dd5cd33bc7ae13cb85f */














