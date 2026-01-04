{{
    config(materialized='table')
}}

WITH FCT_RATINGS AS (
    SELECT * FROM {{ ref('fct_ratings') }}
),
SEED_DATES AS (
    SELECT * FROM {{ ref('seed_movie_release_dates') }}
)

SELECT 
    FR.*,
    CASE
     WHEN SD.RELEASE_DATE IS NULL THEN 'Unknown'
    ELSE 'Known' END  AS RELEASE_INFO_AVAILABLE
FROM 
FCT_RATINGS FR
LEFT JOIN 
SEED_DATES SD
ON FR.MOVIE_ID = SD.MOVIE_ID