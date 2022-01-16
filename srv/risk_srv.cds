using risk from '../db/risk';
service CatalogService {

 entity Groups
	as projection on risk.Groups;

 entity GroupAssign
	as projection on  risk.GroupAssign;

}