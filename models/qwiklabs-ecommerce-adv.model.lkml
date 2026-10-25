connection: "bigquery_public_data_looker"

datagroup: qwiklabs_ecommerce_adv_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: qwiklabs_ecommerce_adv_default_datagroup
