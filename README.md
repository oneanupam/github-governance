# GitHub Governance

This repository codifies GitHub repository governance as Terraform. It helps enforce consistent branch protection and repository rules across a set of repositories owned by a GitHub account or organization.

## Repository structure

```text
.
├── LICENSE
├── CONTRIBUTING.md
├── README.md
├── scripts/
│   └── .gitkeep
├── terraform/
│   ├── _backend.tf
│   ├── _providers.tf
│   ├── _versions.tf
│   ├── data.tf
│   ├── locals.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── terraform.tfvars
│   └── variables.tf
└── .github/
    ├── CODEOWNERS
    ├── conventional-commit-lint.yaml
    ├── pull-request_template.md
    └── workflows/
```

## Prerequisites

Before running the Terraform configuration, ensure you have:

- Terraform 1.15.x or later
- a GitHub personal access token with permission to manage repository settings
- access to the target GitHub owner or organization

Set the token for the GitHub provider, for example:

```bash
export GITHUB_TOKEN="<your-github-token>"
```

## Usage

From the repository root:

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines and commit conventions.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
