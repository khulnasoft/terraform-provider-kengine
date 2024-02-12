---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "baselime_alert Resource - terraform-provider-baselime"
subcategory: ""
description: |-
  Alert resource
---

# baselime_alert (Resource)

Alert resource



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `channels` (List of Object) Alert channels (see [below for nested schema](#nestedatt--channels))
- `description` (String) Alert description
- `enabled` (Boolean) Alert enabled
- `frequency` (String)
- `name` (String) Alert name
- `query` (String) Alert query
- `threshold` (Object) Alert threshold (see [below for nested schema](#nestedatt--threshold))
- `window` (String)

<a id="nestedatt--channels"></a>
### Nested Schema for `channels`

Required:

- `targets` (List of String)
- `type` (String)


<a id="nestedatt--threshold"></a>
### Nested Schema for `threshold`

Required:

- `operator` (String)
- `value` (Number)