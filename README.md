terraform-provider-st-cloudflare
===============================

This Terraform custom provider is designed for own use case scenario.

Supported Versions
------------------

| Terraform version | minimum provider version |maxmimum provider version
| ---- | ---- | ----|
| >= 1.3.x	| 0.1.1	| latest |

Requirements
------------

-	[Terraform](https://www.terraform.io/downloads.html) 1.3.x
-	[Go](https://golang.org/doc/install) 1.19 (to build the provider plugin)

Local Installation
------------------

1. Run make file `make install-local-custom-provider` to install the provider under ~/.terraform.d/plugins.

2. The provider source should be change to the path that configured in the *Makefile*:

    ```
    terraform {
      required_providers {
        st-cloudflare = {
          source = "example.local/myklst/st-cloudflare"
        }
      }
    }

    provider "st-alicloud" {
      api_token = "xxxxx"
    }
    ```

Why Custom Provider
-------------------

This custom provider exists due to some of the resources in the
official Cloudflare Terraform provider may not fulfill the requirements of some
scenario. The reason behind every resources are stated as below:

### Resources

- **st-cloudflare_zone_type**

  The original reason to write this resource is official Cloudflare Terraform
  provider have a bug where when destroying the resource, it does not transform
	the domain back to Free Plan. As a result, destroy will failed.

References
----------

- Website: https://www.terraform.io
- Terraform Plugin Framework: https://developer.hashicorp.com/terraform/tutorials/providers-plugin-framework
