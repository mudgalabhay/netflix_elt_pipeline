{{
    config(materialized = 'table')
}}

WITH RAW_TAGS AS (
    SELECT * FROM MOVIELENS.RAW.RAW_TAGS
)
SELECT
    USERID AS USER_ID,
    MOVIEID AS MOVIE_ID,
    "tag" as tag,
    TO_TIMESTAMP_LTZ("timestamp") AS TAG_TIMESTAMP
FROM
    RAW_TAGS