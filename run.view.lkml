view: run {
  sql_table_name: public.run ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.end_time ;;
  }

  dimension: git_hash {
    type: string
    sql: ${TABLE}.git_hash ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: repeats {
    type: number
    sql: ${TABLE}.repeats ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.start_time ;;
  }

  dimension: warmup {
    type: number
    sql: ${TABLE}.warmup ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, trace.count]
  }
}
