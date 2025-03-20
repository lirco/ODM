-- this is a view!
select
    id
    lower(type_name)        as type_name,
    lower(sub_type_name)    as sub_type_name
from {{ source("app_db", "pet_types") }} 