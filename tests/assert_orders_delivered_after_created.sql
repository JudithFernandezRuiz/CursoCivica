-- Este test falla si hay pedidos con delivered_at anterior a created_at
select
    order_id,
    created_at,
    delivered_at
from {{ ref('stg_postgres__ORDERS') }}
where delivered_at < created_at