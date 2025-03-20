-- this is a view!
select
    timestamp as date_ts,
    pet_id,
    friend_pet_id,
    source_id,
    source_type
from {{ source("app_events", "add_friend") }} 
where
    1 = 1

    {% if target.name != "production" %}

        and timestamp > dateadd('day', -8, current_date())

    {% endif %}

