WITH STG_TAGS AS (
    SELECT * FROM {{ ref('stg_genome_tags') }}
)

SELECT 
    TAG_ID,
    INITCAP(TRIM(TAG)) AS TAG_NAME
FROM 
STG_TAGS