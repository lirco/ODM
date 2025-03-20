-- this is a view!
select
    date_ts                 as pet_joined_date_ts,
    cast(date_ts as date)   as pet_joined_date_day,
    pet_id,
    owner_id,
    lower(pet_name) as pet_name,
    lower(pet_type) as pet_type

from {{ source("app_db", "pets") }} 