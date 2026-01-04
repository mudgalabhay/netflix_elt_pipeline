{% snapshot snap_tags %}

{{
    config(
        target_schema= 'snapshots',
        unique_key=['user_id', 'movie_id', "tag"],
        strategy='timestamp',
        updated_at='tag_timestamp',
        invalidate_hard_deletes=True
    )
}}

SELECT
    {{ dbt_utils.generate_surrogate_key(['user_id', 'movie_id', "tag"]) }} AS ROW_KEY,
    USER_ID,
    MOVIE_ID,
    tag as TAG,
    CAST(tag_timestamp AS TIMESTAMP_NTZ) AS TAG_TIMESTAMP
FROM 
    {{ ref('stg_tags') }}
LIMIT 100

{% endsnapshot %}