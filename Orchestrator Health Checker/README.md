# Orchestrator Health Checker


## Description
Since the Orchestrator CodePlex website has been archived and download links are cryptic (but still downloadable), 
I wanted to make it easy and share this useful tool to monitor your Orchestrator environment.

## Abilities
It allows to monitor the Orchestrator 2012, 2016, 2019 environment as a whole allowing amoung several things:
- To see running and queued up Runbooks (summarized or per Runbook Server)
- Get information of each specific instance connecting it with its PID
- Ability to Stop the Runbook Tree (child, grandchild, etc Runbooks) as well as per Runbook Server
- To execute Administrative Tasks such as: 
  - Stop All Runbooks
  - Stop All Monitoring Runbooks (Runbooks which their namess start with "Monitor")
  - Clear Orphaned Runbooks
  - Customized Log Purge
  - Start All Monitoring Runbooks (by invoking a Runbook specified in the application config file)
- To verify the health of the system and the database (index fragmentation, files' sizes, rebuild index) as well as Log Purge trending
- To audit the environment Runbooks created, modified, deleted and still checked out since a certain date.
- Ability to update password on Activities. Just specifying the User ID, the application will update all occurrences on Activities within Runbooks (if the Activity is not configured, you can add it by editing ActivitiesInfo.xml. Also, ability to update password on Variables and Configurations however the old password will be required and it works as a "Search and Replace" looking for the old password and replacing it by the new one.

## How to configure it?
- No installation is required!
- Configuration is done through the Application Config File. You should specify the ConnectingString to your SCOrch Database (required) and your Web Service URL as well as Start Monitor Runbook’s runbook name (optional). Check included .config file for reference, you just need to replace the word “MyEnvironment” or “My Environment” by whatever name you want (It suppots multiple-entries):

```xml
<connectionStrings> 
<add name="MyEnvironment_SCORCH_DB" connectionString="Server=SCORCH_SQL_SERVERNAME,PORT;Database=SCORCH_DB_NAME;Trusted_Connection=True;"/> 
</connectionStrings>
