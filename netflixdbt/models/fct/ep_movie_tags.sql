WITH FCT_MOVIE_WITH_TAGS AS (
    SELECT * FROM {{ ref('dim_movies_with_tags') }}
)

SELECT * FROM FCT_MOVIE_WITH_TAGS