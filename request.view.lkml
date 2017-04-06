view: request {
  sql_table_name: public.request ;;

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

  dimension: entry_index {
    type: number
    sql: ${TABLE}.entry_index ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: request_body_size {
    type: number
    sql: ${TABLE}.request_body_size ;;
  }

  dimension: request_headers_size {
    type: number
    sql: ${TABLE}.request_headers_size ;;
  }

  dimension: response_body_size {
    type: number
    sql: ${TABLE}.response_body_size ;;
  }

  dimension: response_headers_size {
    type: number
    sql: ${TABLE}.response_headers_size ;;
  }

  dimension: response_status {
    type: number
    sql: ${TABLE}.response_status ;;
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

  dimension: time_ms {
    type: number
    sql: ${TABLE}.time_ms ;;
  }

  dimension: total_time {
    type: number
    sql: ${TABLE}.total_time ;;
  }

  dimension: trace_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.trace_id ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [id, trace.browser_name, trace.name, trace.id]
  }
}
