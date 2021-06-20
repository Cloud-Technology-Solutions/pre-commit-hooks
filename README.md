# `pre-commit-hooks` README

This is a collection of [pre-commit](https://pre-commit.com) hooks used by
[CTS](https://cts.co) for automated compliance checking.

## Hooks

-   `markdownlint`: runs `markdownlint-cli` against any Markdown files in the
    repository.
-   `add-missing-readme`: adds a `README.md` formatted for use with the third
    party `terraform-docs` hook to auto-generate Terraform documentation for
    any directory containing a `main.tf`.
-   `check-modules-use-tag`: used in a Terraground `modules`/`live` workflow to
    ensure that any Terraform modules referenced from Terragrunt use a proper
    Git tag as a reference and not a mutable branch.

## License

MIT: see [LICENSE](LICENSE).
