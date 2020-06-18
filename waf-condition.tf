resource "aws_waf_sql_injection_match_set" "AWS_Security_Blog_SQLI_Match_Set" {
  name = "${var.AWS_Security_Blog_SQLI_Match_Set_Name}"
  sql_injection_match_tuples {
    text_transformation = "HTML_ENTITY_DECODE"
    field_to_match {
      type = "QUERY_STRING"
    }
  }
  sql_injection_match_tuples {
    text_transformation = "URL_DECODE"
    field_to_match {
      type = "QUERY_STRING"
    }
  }
  sql_injection_match_tuples {
    text_transformation = "HTML_ENTITY_DECODE"
    field_to_match {
      type = "URI"
    }
  }
  sql_injection_match_tuples {
    text_transformation = "URL_DECODE"
    field_to_match {
      type = "URI"
    }
  }
  sql_injection_match_tuples {
    text_transformation = "HTML_ENTITY_DECODE"
    field_to_match {
      type = "BODY"
    }
  }
  sql_injection_match_tuples {
    text_transformation = "URL_DECODE"
    field_to_match {
      type = "BODY"
    }
  }  
  sql_injection_match_tuples {
    text_transformation = "HTML_ENTITY_DECODE"
    field_to_match {
      type = "HEADER"
      data = "Cookie"
    }
  }
  sql_injection_match_tuples {
    text_transformation = "URL_DECODE"
    field_to_match {
      type = "HEADER"
      data = "Cookie"
    }
  }
  sql_injection_match_tuples {
    text_transformation = "HTML_ENTITY_DECODE"
    field_to_match {
      type = "HEADER"
      data = "Authorization"
    }
  }
  sql_injection_match_tuples {
    text_transformation = "URL_DECODE"
    field_to_match {
      type = "HEADER"
      data = "Authorization"
    }
  }
}

