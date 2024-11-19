module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cnapp-sandbox@futureverse.com"
    AccountName               = "sandbox"
    ManagedOrganizationalUnit = "Sandbox (ou-1r4w-iddczeem)"
    SSOUserEmail              = "fred.lai@futureverse.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "audit" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cnapp-audit@futureverse.com"
    AccountName               = "Audit"
    ManagedOrganizationalUnit = "Security (ou-1r4w-l60z7t65)"
    SSOUserEmail              = "fred.lai@futureverse.com"
    SSOUserFirstName          = "Fred"
    SSOUserLastName           = "Lai"
  }

  account_tags = {
    "Enroll" = "audit"
  }

  change_management_parameters = {
    change_requested_by = "Fred"
    change_reason       = "Enroll audit account to Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
