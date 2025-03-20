select  a.*,
        b.* exclude (pet_id),
        c.* exclude (pet_id),
        d.* exclude (pet_id)
from    {{ref('pet_dim')}}  a
left join {{ref('pet_daily__post_submit_agg')}} b on a.pet_id = b.pet_id
left join {{ref('pet_daily__post_like_agg')}} e on a.pet_id = b.pet_id
