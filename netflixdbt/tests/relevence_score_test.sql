/*SELECT 
    MOVIE_ID,
    TAG_ID,
    RELEVANCE_SCORE
FROM 
    {{ ref('fct_genome_scores') }}
WHERE RELEVANCE_SCORE <= 0*/

-- Using macro
{{
    no_nulls_in_columns(ref('fct_genome_scores'))
}}