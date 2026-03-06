# terraform-provider-elastic-siem-detection
A complete Elastic SIEM rules / exception containers / exceptions terraform provider

This repository is a provider for [Elastic SIEM](https://www.elastic.co/security/siem).

## Requirements

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [Go](https://golang.org/doc/install) >= 1.22

## Building The Provider

1. Clone the repository
1. Enter the repository directory
1. Build the provider using the Go `install` command:

```shell
go install
```

## Publishing The Provider

Follow the instructions here: https://developer.hashicorp.com/terraform/tutorials/providers/provider-release-publish

## The published Provider

The provider can be found here: https://registry.terraform.io/providers/tsigouris007/elastic-siem-detection/latest

## Adding Dependencies

This provider uses [Go modules](https://github.com/golang/go/wiki/Modules).
Please see the Go documentation for the most up to date information about using Go modules.

To add a new dependency `github.com/author/dependency` to your Terraform provider:

```shell
go get github.com/author/dependency
go mod tidy
```

Then commit the changes to `go.mod` and `go.sum`.

## Developing the Provider locally

If you wish to work on the provider, you'll first need [Go](http://www.golang.org) installed on your machine (see [Requirements](#requirements) above).

To compile the provider, run `go install`. This will build the provider and put the provider binary in the `$GOPATH/bin` directory.

To use it locally, create a `.terraformrc` in your home directory:
```sh
cat > ~/.terraformrc <<EOF
provider_installation {
  dev_overrides {
    "t3nz0ps/elastic-siem-detection" = "$(go env GOPATH)/bin"
  }
  direct {}
}
EOF
```

To generate or update documentation, run `go generate`.
In order to run the full suite of Acceptance tests, run `make testacc`.

## Credits

Special thanks to [tsigouris007](https://github.com/tsigouris007/terraform-provider-elastic-siem-detection) for authoring the initial releases of this provider.
