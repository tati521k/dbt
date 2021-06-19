select 
    customer_id,
    {{ dbt_utils.pivot('status',('placed','shipped','returned','completed','return_pending'), 'status') }}
from {{ ref('stg_orders') }}
group by customer_id

