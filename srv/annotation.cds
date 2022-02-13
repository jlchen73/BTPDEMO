using CatalogService as service from './risk_srv';

annotate service.GroupAssign with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'GroupID',
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
    SelectionFields : [
    GroupID_GroupID,
    CompanyCode
],
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
            Label : 'Group Assignment',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);

annotate service.Groups with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'GroupID',
            Value : GroupID,
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
        {
            $Type : 'UI.DataField',
            Label : 'INTOnHoliday',
            Value : INTOnHoliday,
        },
        {
            $Type : 'UI.DataField',
            Label : 'INTStartTime',
            Value : INTStartTime,
        },
        {
            $Type : 'UI.DataField',
            Label : 'INTStartOffsetDays',
            Value : INTStartOffsetDays,
        },
        {
            $Type : 'UI.DataField',
            Label : 'INTEndTime',
            Value : INTEndTime,
        },
        {
            $Type : 'UI.DataField',
            Label : 'INTEndOffsetDays',
            Value : INTEndOffsetDays,
        },
        {
            $Type : 'UI.DataField',
            Label : 'INTFrequency',
            Value : INTFrequency,
        },
    ],
    SelectionFields : [
    GroupID,
    GroupName,
    INTFlag
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
            Label : 'GroupID',
            Value : GroupID,
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
        {
            $Type : 'UI.DataField',
            Label : 'INTOnHoliday',
            Value : INTOnHoliday,
        },
        {
            $Type : 'UI.DataField',
            Label : 'INTStartTime',
            Value : INTStartTime,
        },
        {
            $Type : 'UI.DataField',
            Label : 'INTStartOffsetDays',
            Value : INTStartOffsetDays,
        },
        {
            $Type : 'UI.DataField',
            Label : 'INTEndTime',
            Value : INTEndTime,
        },
        {
            $Type : 'UI.DataField',
            Label : 'INTEndOffsetDays',
            Value : INTEndOffsetDays,
        },
        {
            $Type : 'UI.DataField',
            Label : 'INTFrequency',
            Value : INTFrequency,
        },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Snapshot Group',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);