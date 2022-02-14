using risk from '../db/risk';
service CatalogService {

 entity Groups @(
     Capabilities: {
         InsertRestrictions: {Insertable: true},
         UpdateRestrictions: {Updatable: true},
         DeleteRestrictions: {Deletable: true}    
     }
) as projection on risk.Groups;

 entity GroupAssign @(
     Capabilities: {
         InsertRestrictions: {Insertable: true},
         UpdateRestrictions: {Updatable: true},
         DeleteRestrictions: {Deletable: true}    
     }
) as projection on  risk.GroupAssign;

entity DailySchedule @(
    Capabilities: {
         InsertRestrictions: {Insertable: true},
         UpdateRestrictions: {Updatable: true},
         DeleteRestrictions: {Deletable: true}    
     }
) as projection on risk.DailySchedule;

entity SnapshotHeader @ (
    Capabilities: {
         InsertRestrictions: {Insertable: true},
         UpdateRestrictions: {Updatable: true},
         DeleteRestrictions: {Deletable: true}    
     }
) as projection on risk.SnapshotHeader;

entity Settings @ (
    Capabilities: {
         InsertRestrictions: {Insertable: true},
         UpdateRestrictions: {Updatable: true},
         DeleteRestrictions: {Deletable: true}    
     }
) as projection on risk.Settings;

}