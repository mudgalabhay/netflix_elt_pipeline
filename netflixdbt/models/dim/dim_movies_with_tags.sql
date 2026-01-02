{{
    config(
        materialized='ephemeral'
    )
}}

WITH MOVIES AS (
    SELECT * FROM {{ ref('dim_movies') }}
),
TAGS AS (
    SELECT * FROM {{ ref('dim_genome_tags') }}
),
SCORES AS (
    SELECT * FROM {{ ref('fct_genome_scores') }}
)

SELECT
M.MOVIEID,
M.MOVIE_TITLE,
M.GENRES,
T.TAG_NAME,
S.RELEVANCE_SCORE
FROM
MOVIES M 
LEFT JOIN
SCORES S ON M.MOVIEID = S.MOVIE_ID
LEFT JOIN
TAGS T ON T.TAG_ID = S.TAG_ID