connection: "regression"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: request {
  join: trace {
    type: left_outer
    sql_on: ${request.trace_id} = ${trace.id} ;;
    relationship: many_to_one
  }

  join: run {
    type: left_outer
    sql_on: ${trace.run_id} = ${run.id} ;;
    relationship: many_to_one
  }
}

explore: run {}

explore: schema_info {}

explore: trace {
  join: run {
    type: left_outer
    sql_on: ${trace.run_id} = ${run.id} ;;
    relationship: many_to_one
  }
}
