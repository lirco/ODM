-- enrichments with one-to-one relationships
select
    p.pet_id,
    p.owner_id,
    p.pet_joined_date_ts,
    p.pet_joined_date_day,
    p.pet_name,
    p.pet_type,
    -- snowfkake pattern enrichments
    pt.type_name, 
    pt.sub_type_name,
    -- parent entity enrichments
    o.zip_code
from {{ ref("src_pets") }}  p
left join {{ ref("src_pet_types") }}  pt on p.type_id = pt.id
left join {{ ref("owner_din") }}  o on p.owner_id = o.id