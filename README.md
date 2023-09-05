# terraform-scalr

## Log into Scalr

You can log into Scalr using the following command:

```bash
terraform login nikolay.scalr.io
```

## Initialize Scalr

1. Update `imports.tf` with the default envrionment's ID, starting with `env-`
2. Run `terraform plan` to create the default workspace
3. Update `imports.tf` with the default workspace's ID, starting with `ws-`
4. Create a service account named `terraform-scalr` and update `imports.tf` with its ID, starting with `sa-`
5. In the Scalr's web UI, in the Integrations section, connect to GitHub and name the integration `github-nikolay`
6. Go to the GitHub's integration and update `imports.tf` with its ID, starting with `vcs-`