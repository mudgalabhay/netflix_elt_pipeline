-- This config will overwrite any config defined in dbt_project.yml
{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}

WITH STG_RATINGS AS (
    SELECT * FROM {{ ref('stg_ratings') }}
)

SELECT 
    USER_ID,
    MOVIE_ID,
    RATING,
    RATING_TIMESTAMP
FROM 
STG_RATINGS
WHERE RATING IS NOT NULL

-- Incremental logic
{% if is_incremental() %}
    AND RATING_TIMESTAMP > (SELECT MAX(RATING_TIMESTAMP) FROM {{ this }})
{% endif %}