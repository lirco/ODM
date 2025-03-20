select  pet_id,
        count(post_id)          as count_post_submit,
        sum(post_chars)         as total_post_chars,
        average(post_chars)     as average_post_chars,
from    {{ref('src_post_submit')}}
group by 1