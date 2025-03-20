-- this is a view!
select
    timestamp as date_ts,
    cast(timestamp as date)   as date_day,
    pet_id,
    post_id,
    like_type
    
from {{ source("app_events", "post_like") }} 
where
    1 = 1

    {% if target.name != "production" %}

        and timestamp > dateadd('day', -8, current_date())

    {% endif %}

