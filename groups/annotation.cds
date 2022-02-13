using CatalogService as service from '../srv/risk_srv';
annotate service.Groups with @(
    UI.SelectionFields : [
    GroupID,
    GroupName,
    INTFlag
    ]
);