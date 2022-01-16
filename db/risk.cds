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

};