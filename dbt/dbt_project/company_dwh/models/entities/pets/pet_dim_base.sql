
select
    pet_id,
    owner_id,
    pet_joined_date_ts,
    pet_joined_date_day,
    pet_name,
    pet_type

from {{ ref("src_pets") }} 