terraform {
  required_providers {
    kengine  = {
      version = "~> 0.1.5"
      source  = "khulnasoft/kengine"
    }
  }
}

provider "kengine " {
  api_key = "your_api_key"
}

resource "Kengine_query" "terraformed" {
  name        = "terraformed-query"
  description = "This query was created by Terraform"
  datasets    = ["lambda-logs"]
  filters = [
    {
      key       = "message"
      operation = "INCLUDES"
      value     = "error"
      type      = "string"
    }
  ]
  filter_combination = "AND"
  calculations = [
    {
      key      = ""
      operator = "COUNT"
      alias    = "count"
    }
  ]
  group_by = [
    {
      type  = "string"
      value = "message"
    }
  ]
  order_by = {
    value = "count"
    order = "DESC"
  }
  limit = 10
  needle = {
    value      = ".*"
    is_regex   = true
    match_case = false
  }
}

resource "Kengine_alert" "terraformed" {
  name        = "terraformed-alert"
  description = "This alert was created by Terraform"
  enabled     = true
  channels = [
    {
      type    = "email"
      targets = ["foo@kengine.khulnasoft.com"]
    }
  ]
  query = Kengine_query.terraformed.id
  threshold = {
    operator = "GREATER_THAN"
    value    = 0
  }
  frequency = "10m"
  window    = "5m"
}

resource "Kengine_dashboard" "terraformed" {
  name        = "terraformed-dashboard"
  description = "This alert was created by Terraform"
  widgets = [
    {
      query_id    = Kengine_query.terraformed.id
      type        = "timeseries"
      name        = "Line Chart"
      description = "This is a line chart"
    }
  ]
}