# Contributing

## TLDR

- Fork the repository
- Create a branch
- Make your changes
- Submit a pull request

## Adding New Datasets

- Create a new table in the primary database
  - Table name should match the dataset's official name 
- Create a rails model for the table
  - Model should be namespaced under the department that publishes the dataset
  - Model should set self.table_name to the dataset's official name
- Add the following API endpoint constants:
  - SODA2_API_ENDPOINT
  - SODA2_CSV_API_ENDPOINT
  - SODA3_API_ENDPOINT
  - SODA3_CSV_API_ENDPOINT
- Add the following metadata class methods:
  - url
  - name
  - description
  - data_provided_by
  - agency
  - update_frequency
  - automation
  - date_made_public
  - category
  - tags
- Add the following import class methods:
  - import (public)
  - import_soda2 (private)
  - import_soda2_csv (private)
  - import_soda3 (private)
  - import_soda3_csv (private)

## Adding New ETL Workflows

TODO