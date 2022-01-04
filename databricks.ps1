# To use this script you will need to have the Databricks Authentication token and the Databricks host see here (https://docs.microsoft.com/en-us/azure/databricks/dev-tools/api/latest/authentication)

pip install databricks-cli
databricks configure --token [token_here_remove_brackets]

# Commands below display clusters
databricks clusters list --output JSON | jq .
databricks clusters list-node-types

# Commands below list secrets within Databricks environment
databricks secrets list-scopes --output JSON
databricks secrets list --scope [Your Scope Here] --output JSON
databricks secrets put --scope [Your Scope Here] --key [Your Key Here] --string-value '[Your Value Here]'

