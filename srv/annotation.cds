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

annotate service.Groups with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'GroupID_GroupID',
            Value : GroupID_GroupID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'GroupName',
            Value : GroupName,
        },        
        {
            $Type : 'UI.DataField',
            Label : 'TimeZone',
            Value : TimeZone,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LocalCutTime',
            Value : LocalCutTime,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LocalCutTimeOffsetDays',
            Value : LocalCutTimeOffsetDays,
        },
        {
            $Type : 'UI.DataField',
            Label : 'INTFlag',
            Value : INTFlag,
        },
    ]
);

annotate service.Groups with @(
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

annotate service.Groups with @(
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
            Label : 'GroupName',
            Value : GroupName,
        },        
        {
            $Type : 'UI.DataField',
            Label : 'TimeZone',
            Value : TimeZone,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LocalCutTime',
            Value : LocalCutTime,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LocalCutTimeOffsetDays',
            Value : LocalCutTimeOffsetDays,
        },
        {
            $Type : 'UI.DataField',
            Label : 'INTFlag',
            Value : INTFlag,
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