{% macro add_sum(column_name, column_value, amount_column) -%}
{# This macro adds an amount to a new column when a condition is met for having a specific value#}
    sum(case when {{ column_name }} = {{ column_value }} then {{ amount_column }} end) as {{ amount_column }}
{%- endmacro %}