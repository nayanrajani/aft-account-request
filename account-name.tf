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
    "daily_backup_retention"  = 30
    "daily_backup_schedule"   = "cron(30 19 * * ? *)"
    #(backup scheduled on every Saturday of the week and retina for 4 weeks)
    "weekly_backup_enabled"   = true
    "weekly_backup_retention" = 30
    "weekly_backup_schedule"  = "cron(30 19 * * SAT *)"
    #(backup scheduled on every month first week of Sunday and retina for 1 month)
    "monthly_backup_enabled"   = true
    "monthly_backup_retention" = 30
    "monthly_backup_schedule"  = "cron(30 19 ? * 1#1 *)"
    #(backup scheduled on every year first month & first week of Sunday and retina for 1 year)
    "yearly_backup_enabled"   = true
    "yearly_backup_retention" = 365
    "yearly_backup_schedule"  = "cron(30 19 ? JAN 1#1 *)"
  }
}  
