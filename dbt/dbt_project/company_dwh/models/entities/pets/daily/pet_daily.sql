select  a.*,
        dd.date_day,
        b.* exclude (pet_id),
        c.* exclude (pet_id)
from    {{ref('pet_dim')}}  a
left join   {{ref('pet_dim')}}  dd on dd.date_day <= current_date()
left join {{ref('pet_daily__post_submit_agg')}} b on a.pet_id = b.pet_id and b.date_day = dd.date_day
left join {{ref('pet_daily__post_like_agg')}} c on a.pet_id = c.pet_id and c.date_day = dd.date_day
