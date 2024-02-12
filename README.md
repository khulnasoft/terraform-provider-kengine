# Kengine Observability as Code Terraform Provider

Observability as Code with the [Kengine](https://kengine.khulnasoft.com) Terraform provider.

## Resources

* [Documentation](https://registry.terraform.io/providers/khulnasoft/kengine/latest/docs)
* [Examples](https://github.com/khulnasoft/terraform-provider-kengine/tree/main/examples/resources)

## Community
If you have any questions or want to discuss Kengine, please join our [Slack community](https://join.slack.com/t/kengine community/shared_invite/zt-24fbumkc5-9O6qIj92xW_CbQSHeKT7CQ).

## Using the provider
```terraform
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
```

#### Api Key
To find your key:
1. Navigate to https://console.kengine.khulnasoft.com
2. Select the workspace you need
3. Select the environment you want to get the key for
4. Click on the "API Keys" button on the left-hand side menu (key icon)

The API key can be supplied via the `KENGINE_API_KEY` environment variable as well.


#### Resource types
- [Query](https://registry.terraform.io/providers/khulnasoft/kengine/latest/docs/resources/query)
- [Dashboard](https://registry.terraform.io/providers/khulnasoft/kengine/latest/docs/resources/dashboard)
- [Alert](https://registry.terraform.io/providers/khulnasoft/kengine/latest/docs/resources/alert)