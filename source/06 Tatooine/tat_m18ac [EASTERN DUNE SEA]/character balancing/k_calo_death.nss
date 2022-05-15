void main(){
  if(GetIsDead(GetObjectByTag("bp_calo_ambush")) &&
  GetIsDead(GetObjectByTag("bp_calo_ambush1")) &&
  GetIsDead(GetObjectByTag("bp_calo_ambush2")) &&
  GetIsDead(GetObjectByTag("bp_calo_ambush3")) &&
  GetIsDead(GetObjectByTag("bp_calo_ambush4")) &&
  GetIsDead(GetObjectByTag("bp_calo_ambush_2"))
  ){
  CreateItemOnObject("ebon_armband",GetFirstPC(),1,0);
  }
}