-- Solo se cogen las variables que necesitamos. 
select 
    id as badge_id, 
    name as badge_name, 
    date as award_timestamp, 
    user_id
-- Se hace referencia a la fuente especificada en "sources"
from {{ source("raw", "badges") }}
