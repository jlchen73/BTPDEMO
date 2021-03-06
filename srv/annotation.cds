using CatalogService as service from './risk_srv';

annotate service.GroupAssign with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'GroupID',
            Value : GroupID.GroupID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'GroupName',
            Value : GroupID.GroupName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CompanyCode',
            Value : CompanyCode,
        },        
    ],
    UI.SelectionFields : [
    GroupID_GroupID,
    CompanyCode
    ],
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

annotate service.GroupAssign with @title: '{i18n>GroupAssign}' {
  GroupID     @title: '{i18n>GroupID}'        @Common.Text: GroupID.GroupName   @Common.TextArrangement: #TextFirst;
  CompanyCode @title: '{i18n>CompanyCode}'  ;
}

annotate service.GroupAssign with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
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

annotate service.GroupAssign with {
 
    GroupID @(Common : {
 /*       ValueListWithFixedValues, */
        ValueList : {
            SearchSupported : true,
            Label          : '{i18n>Group}',
            CollectionPath : 'Groups',
            Parameters      : [{
                $Type             : 'Common.ValueListParameterInOut',
                LocalDataProperty : GroupID_GroupID,
                ValueListProperty : 'GroupID'
            }, 
            {
                $Type             : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'GroupName'
            }
            ]
        }
    });

/*
    ![GroupID.GroupName] @(Common : {
        ValueListWithFixedValues,
        ValueList : {
            SearchSupported : true,
            Label          : '{i18n>GroupName}',
            CollectionPath : 'Groups',
        }
    }); */
};

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
        {
            $Type : 'UI.DataField',
            Label : 'CreatedAt',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CreatedBy',
            Value : createdBy,
        },
    ],
    UI.SelectionFields : [
    GroupID,
    GroupName,
    INTFlag
    ],
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

annotate service.DailySchedule with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'GroupID',
            Value : GroupID_GroupID,
        },     
        {
            $Type : 'UI.DataField',
            Label : 'SnapshotDate ',
            Value : SnapshotDate ,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LocalCutOffDate',
            Value : LocalCutOffDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LocalCutOffTime',
            Value : LocalCutOffTime,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CutOffUTCTimestamp',
            Value : CutOffUTCTimestamp,
        },
        {
            $Type : 'UI.DataField',
            Label : 'RunSnapshot',
            Value : RunSnapshot,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Reportable',
            Value : Reportable,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CreatedAt',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CreatedBy',
            Value : createdBy,
        },
    ],
    UI.SelectionFields : [
    GroupID_GroupID,
    GroupID.GroupName,
    SnapshotDate
    ],
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

annotate service.DailySchedule with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type : 'UI.DataField',
            Label : 'GroupID',
            Value : GroupID.GroupID,
        },     
        {
            $Type : 'UI.DataField',
            Label : 'SnapshotDate ',
            Value : SnapshotDate ,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LocalCutOffDate',
            Value : LocalCutOffDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LocalCutOffTime',
            Value : LocalCutOffTime,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CutOffUTCTimestamp',
            Value : CutOffUTCTimestamp,
        },
        {
            $Type : 'UI.DataField',
            Label : 'RunSnapshot',
            Value : RunSnapshot,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Reportable',
            Value : Reportable,
        },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Daily Schedule',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);

annotate service.SnapshotHeader with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'SnapshotID',
            Value : SnapshotID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Snapshot_Date',
            Value : Snapshot_Date,
        },        
        {
            $Type : 'UI.DataField',
            Label : 'GroupID',
            Value : GroupID.GroupID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'RunType_ID',
            Value : RunType_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'RerollDate',
            Value : RerollDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Run_Start_UTC_TimeStamp',
            Value : Run_Start_UTC_TimeStamp,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Run_End_UTC_TimeStamp',
            Value : Run_End_UTC_TimeStamp,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Duration',
            Value : Duration,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Record_CT',
            Value : Record_CT,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Active',
            Value : Active,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Display',
            Value : Display,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Retain',
            Value : Retain,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CreatedAt',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CreatedBy',
            Value : createdBy,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ModifiedAt',
            Value : modifiedAt,
        },
        {
            $Type : 'UI.DataField',
            Label : 'modifiedBy',
            Value : modifiedBy,
        },
    ],
    UI.SelectionFields : [
    GroupID_GroupID,
    GroupID.GroupName,
    Snapshot_Date,
    RunType_ID
    ],
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

annotate service.SnapshotHeader with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type : 'UI.DataField',
            Label : 'SnapshotID',
            Value : SnapshotID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Snapshot_Date',
            Value : Snapshot_Date,
        },        
        {
            $Type : 'UI.DataField',
            Label : 'GroupID',
            Value : GroupID.GroupID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'GroupName',
            Value : GroupID.GroupName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'RunType_ID',
            Value : RunType_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'RerollDate',
            Value : RerollDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Run_Start_UTC_TimeStamp',
            Value : Run_Start_UTC_TimeStamp,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Run_End_UTC_TimeStamp',
            Value : Run_End_UTC_TimeStamp,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Duration',
            Value : Duration,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Record_CT',
            Value : Record_CT,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Active',
            Value : Active,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Display',
            Value : Display,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Retain',
            Value : Retain,
        },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Snapshot Header',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);

annotate service.Settings with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'SettingName',
            Value : SettingName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SettingValue',
            Value : SettingValue,
        },        
    ],
    UI.SelectionFields : [
    SettingName
    ],
    Capabilities.InsertRestrictions : {
    Insertable : true,
    },
    Capabilities.UpdateRestrictions : {
      Updatable : true,
    },
    Capabilities.DeleteRestrictions : {
      Deletable : true,
    },
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type : 'UI.DataField',
            Label : 'SettingName',
            Value : SettingName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SettingValue',
            Value : SettingValue,
        },  
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Settings',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);




