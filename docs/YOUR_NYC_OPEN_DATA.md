# Your NYC Open Data

Create your own copy of NYC Open Data with Ruby on Rails and Postgres.

Each dataset is represented as an ActiveRecord model/Postgres table.

## Dataset Import

The models contain the following class methods to pull a dataset from the NYC Open Data portal and into your Postgres instance.

### import

The import method supports importing datasets through Socrata's SODA2 and SODA3 APIs.

The datasets can be requested as either json or csv files.

#### SODA2 and JSON

```
DepartmentOfTransportation::BicycleCounter.import(api_version: '2', content_type: 'json')
```

## Dataset Properties

The models contain the following class methods to describe a dataset's properties.

### url
```
DepartmentOfTransportation::BicycleCounter.url
```

### name
```
DepartmentOfTransportation::BicycleCounter.name
```