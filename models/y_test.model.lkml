connection: "database_sample"
include: "/views/*.view.lkml"

datagroup: y_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: y_test_default_datagroup

explore: dfa_dev {}
