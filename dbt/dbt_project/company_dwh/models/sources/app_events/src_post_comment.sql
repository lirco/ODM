-- this is a view!
select
    timestamp as date_ts,
    cast(timestamp as date)   as date_day,
    commenting_pet_id,
    post_id,
    comment_chars_count,
from {{ source("app_events", "post_comment") }} 
where
    1 = 1

    {% if target.name != "production" %}

        and timestamp > dateadd('day', -8, current_date())

    {% endif %}