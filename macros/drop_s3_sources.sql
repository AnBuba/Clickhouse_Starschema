-- Удаление таблиц

{% macro drop_s3_sources() %}

    {% set sql %}
        DROP TABLE IF EXISTS db.src_customer;

        DROP TABLE IF EXISTS db.src_lineorder;

        DROP TABLE IF EXISTS db.src_part;

        DROP TABLE IF EXISTS db.src_supplier;
    {% endset %}

    {% for query in sql.split(';') if query.strip() %}
        {% do run_query(query) %}
    {% endfor %}

{% endmacro %}