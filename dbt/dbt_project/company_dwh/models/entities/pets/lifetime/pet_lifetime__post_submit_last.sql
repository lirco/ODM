select  pet_id,
        post_id             as last_post_id
        post_chars          as last_post_chars
from    {{ref('src_post_submit')}}
qualify ROW_NUMBER() OVER (PARTITION BY pet_id ORDER BY date_ts desc) = 1