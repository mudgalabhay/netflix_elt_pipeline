WITH RAW_MOVIES AS (
    SELECT * FROM {{ source('netflix', 'r_movies') }}
)
SELECT
    MOVIEID,
    TITLE,
    GENRES
FROM
    RAW_MOVIES