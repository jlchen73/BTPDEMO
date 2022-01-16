using CatalogService as service from '../../srv/risk_srv';

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
    ]
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
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
