-- this is a view!
select
    date_ts                 as pet_joined_at
    cast(date_ts as date)   as date_day,
    pet_id,
    lower(pet_name) as pet_name,
    lower(pet_type) as pet_type

from {{ source("app_db", "pets") }} 