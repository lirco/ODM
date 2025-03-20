select  pet_id,
        post_id             as first_post_id
        post_chars          as first_post_chars
from    {{ref('src_post_submit')}}
qualify ROW_NUMBER() OVER (PARTITION BY pet_id ORDER BY date_ts asc) = 1