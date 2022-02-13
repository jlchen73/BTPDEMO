namespace risk;

using { Country } from '@sap/cds/common';
type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024);

using {managed} from '@sap/cds/common';
entity Groups: managed {
  key GroupID : Integer;
  GroupName  : String(100);
  TimeZone  : String(6);
  LocalCutTime : Time;
  LocalCutTimeOffsetDays : Integer;
  INTFlag : String(1);
  INTOnHoliday : String(1);
  INTStartTime : Time;
  INTStartOffsetDays: Integer;
  INTEndTime : Time;
  INTEndOffsetDays : Integer;
  INTFrequency : Integer;
};
entity GroupAssign {

	key GroupID : association to Groups;
	key CompanyCode : String(4);
    value : Integer;
};

entity DailySchedule: managed {
    key GroupID : association to Groups;
    key SnapshotDate : Date;
        LocalCutOffDate: Date;
        LocalCutOffTime: Time;
        CutOffUTCTimestamp: Timestamp;
        RunSnapshot: String(1);
        Reportable: String(1);
};

entity SnapshotHeader: managed {
    key SnapshotID : Integer;
        Snapshot_Date: Date;
        GroupID : Association to Groups;
        RunType_ID : String(5);
        RerollDate : Date;
        Run_Start_UTC_TimeStamp: Timestamp;
        Run_End_UTC_TimeStamp: Timestamp;
        Duration: Decimal;
        Record_CT: Integer;
        Active: String(1);
        Display: String(1);
        Retain: String(1);
}