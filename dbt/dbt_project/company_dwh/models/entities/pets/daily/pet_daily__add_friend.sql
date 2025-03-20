select  payment_id,
        count(distinct chargeback_ticket_id)    as chargeback_attempts
from    {{ref('src_add_friend')}}
group by 1