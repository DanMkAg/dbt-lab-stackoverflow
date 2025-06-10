-- En la capa stage ya se hacen algunas transformaciones
select
    id as post_id,
    creation_date as created_at,
    -- Nueva columna
    'answer' as type,
    title,
    body,
    owner_user_id,
    -- Se pasa a string una columna
    cast(parent_id as string) as parent_id
from {{ source("raw", "posts_answers") }}
-- Se añade filtro temporal
where creation_date >= timestamp("2022-09-01")
