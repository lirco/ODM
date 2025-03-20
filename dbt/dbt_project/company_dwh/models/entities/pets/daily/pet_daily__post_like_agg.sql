select  pet_id,
        date_day
        count(post_id)                  as count_post_likes,
        count(discinct post_pet_id)     as count_pets_likes,
from    {{ref('src_post_like')}}
group by 1,2