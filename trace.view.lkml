view: trace {
  sql_table_name: public.trace ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: browser_name {
    type: string
    sql: ${TABLE}.browser_name ;;
  }

  dimension: browser_version {
    type: string
    sql: ${TABLE}.browser_version ;;
  }

  dimension: connect_end {
    type: number
    sql: ${TABLE}.connect_end ;;
  }

  dimension: connect_start {
    type: number
    sql: ${TABLE}.connect_start ;;
  }

  dimension: dom_complete {
    type: number
    sql: ${TABLE}.dom_complete ;;
  }

  dimension: dom_content_loaded_event_end {
    type: number
    sql: ${TABLE}.dom_content_loaded_event_end ;;
  }

  dimension: dom_content_loaded_event_start {
    type: number
    sql: ${TABLE}.dom_content_loaded_event_start ;;
  }

  dimension: dom_interactive {
    type: number
    sql: ${TABLE}.dom_interactive ;;
  }

  dimension: dom_loading {
    type: number
    sql: ${TABLE}.dom_loading ;;
  }

  dimension: domain_lookup_end {
    type: number
    sql: ${TABLE}.domain_lookup_end ;;
  }

  dimension: domain_lookup_start {
    type: number
    sql: ${TABLE}.domain_lookup_start ;;
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

  dimension: fetch_start {
    type: number
    sql: ${TABLE}.fetch_start ;;
  }

  dimension_group: first_request_start {
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
    sql: ${TABLE}.first_request_start ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension_group: last_request_end {
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
    sql: ${TABLE}.last_request_end ;;
  }

  dimension: load_event_end {
    type: number
    sql: ${TABLE}.load_event_end ;;
  }

  dimension: load_event_start {
    type: number
    sql: ${TABLE}.load_event_start ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: navigation_start {
    type: number
    sql: ${TABLE}.navigation_start ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: redirect_end {
    type: number
    sql: ${TABLE}.redirect_end ;;
  }

  dimension: redirect_start {
    type: number
    sql: ${TABLE}.redirect_start ;;
  }

  dimension: request_count {
    type: number
    sql: ${TABLE}.request_count ;;
  }

  dimension: request_start {
    type: number
    sql: ${TABLE}.request_start ;;
  }

  dimension: request_time_ms {
    type: number
    sql: ${TABLE}.request_time_ms ;;
  }

  dimension: response_end {
    type: number
    sql: ${TABLE}.response_end ;;
  }

  dimension: response_start {
    type: number
    sql: ${TABLE}.response_start ;;
  }

  dimension: run_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.run_id ;;
  }

  dimension: secure_connection_start {
    type: number
    sql: ${TABLE}.secure_connection_start ;;
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

  dimension: unload_event_end {
    type: number
    sql: ${TABLE}.unload_event_end ;;
  }

  dimension: unload_event_start {
    type: number
    sql: ${TABLE}.unload_event_start ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: average_total_time {
    type:  average
    sql: ${time_ms} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      browser_name,
      name,
      run.id,
      run.name,
      request.count
    ]
  }
}
