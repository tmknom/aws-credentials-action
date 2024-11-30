# aws-credentials-action

Authenticate with AWS using OpenID Connect and set credentials as environment variables.

<!-- actdocs start -->

## Description

This action is a wrapper for [aws-actions/configure-aws-credentials][aws-actions].

## Usage

```yaml
  steps:
    - name: AWS Credentials
      uses: tmknom/aws-credentials-action@v0
      with:
        aws-account-id: 123456789012
        iam-role-name: example-oidc-role
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| aws-account-id | The number used to identify the Amazon Web Services account. | n/a | yes |
| iam-role-name | The name of the role to assume. | n/a | yes |
| aws-region | The region to use. | `us-east-1` | no |

## Outputs

| Name | Description |
| :--- | :---------- |
| session-name | Role session name. |

<!-- actdocs end -->

## Permissions

| Scope    | Access |
| :------- | :----- |
| id-token | write  |

## FAQ

N/A

## Related projects

N/A

## Repository settings

### Environments

- Name: `least`

#### Deployment protection rules

- Required reviewers: `Enabled`
    - Prevent self-review: `Disabled`
- Allow administrators to bypass configured protection rules: `Disabled`

#### Environment secrets

- `AWS_ACCOUNT_ID`: see [tmknom/internal-aws-resources (private)][internal] for more details
- `IAM_ROLE_NAME`: see [tmknom/internal-aws-resources (private)][internal] for more details

## Release notes

See [GitHub Releases][releases].

## License

Apache 2 Licensed. See [LICENSE](LICENSE) for full details.

[aws-actions]: https://github.com/aws-actions/configure-aws-credentials
[internal]: https://github.com/tmknom/internal-aws-resources
[releases]: https://github.com/tmknom/template-composite-action/releases
