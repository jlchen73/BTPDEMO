using CatalogService as service from './risk_srv';

annotate service.GroupAssign with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'GroupID_GroupID',
            Value : GroupID_GroupID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CompanyCode',
            Value : CompanyCode,
        },        
        {
            $Type : 'UI.DataField',
            Label : 'value',
            Value : value,
        },
    ]
);
annotate service.GroupAssign with @(
  Capabilities.InsertRestrictions : {
    Insertable : true,
  },
  Capabilities.UpdateRestrictions : {
      Updatable : true,
  },
  Capabilities.DeleteRestrictions : {
      Deletable : true,
  }
);

annotate service.GroupAssign with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'GroupID_GroupID',
                Value : GroupID_GroupID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CompanyCode',
                Value : CompanyCode,
            },
            {
            $Type : 'UI.DataField',
            Label : 'value',
            Value : value,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
