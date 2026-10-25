view: sql_runner_query {
  derived_table: {
    sql: WITH population_data AS (
        SELECT 'India' AS country, 'Maharashtra' AS state, 20.00 AS population_cr UNION ALL
        SELECT 'India', 'Delhi', 20.00 UNION ALL
        SELECT 'India', 'Uttar Pradesh', 24.00 UNION ALL
        SELECT 'India', 'Karnataka', 7.00 UNION ALL
        SELECT 'India', 'Others', 79.00 UNION ALL
        SELECT 'USA', 'California', 3.90 UNION ALL
        SELECT 'USA', 'Texas', 3.00 UNION ALL
        SELECT 'USA', 'Florida', 2.20 UNION ALL
        SELECT 'USA', 'Others', 23.90 UNION ALL
        SELECT 'China', 'Guangdong', 12.60 UNION ALL
        SELECT 'China', 'Shandong', 10.10 UNION ALL
        SELECT 'China', 'Henan', 9.80 UNION ALL
        SELECT 'China', 'Others', 108.50 UNION ALL
        SELECT 'Japan', 'Tokyo', 1.40 UNION ALL
        SELECT 'Japan', 'Kanagawa', 0.90 UNION ALL
        SELECT 'Japan', 'Osaka', 0.88 UNION ALL
        SELECT 'Japan', 'Others', 9.32
      )
      SELECT country, state, population_cr FROM population_data
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: population_cr {
    type: number
    sql: ${TABLE}.population_cr ;;
  }

  set: detail {
    fields: [country, state, population_cr]
  }
}
