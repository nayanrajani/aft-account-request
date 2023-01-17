module "<name>" {

  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "<email>"
    AccountName               = "<Name>"
    ManagedOrganizationalUnit = "OU  (OU number)"
    SSOUserEmail              = "sso-email"
    SSOUserFirstName          = "<first name>"
    SSOUserLastName = "<last Name>"
  }

  account_tags = {

    "account_name" = "tags"

    "creation-date" = "date"

  }

  change_management_parameters = {

    change_requested_by = "<changer>"

    change_reason = "<reason>"

  }

  account_customizations_name = "example-name" // a similar named folder should be created in aft-account-customizations.  

  # provide values - true or false - for all backup schedules (daily, weekly, monthly and yearly)
  custom_fields = {
    "daily_backup_enabled"    = true
    "daily_backup_retention"  = 7
    "daily_backup_schedule"   = "cron(0 1 * * ? *)"
    "weekly_backup_enabled"   = false
    # "weekly_backup_retention" = 5
    # "weekly_backup_schedule"  = "cron(05 18 ? * SUN *)"
    "monthly_backup_enabled"   = false
    # "monthly_backup_retention" = 5
    # "monthly_backup_schedule"  = "cron(05 18 ? * SUN *)"
    "yearly_backup_enabled"   = false
    # "yearly_backup_retention" = 5
    # "yearly_backup_schedule"  = "cron(05 18 ? * SUN *)"
  }
}  
