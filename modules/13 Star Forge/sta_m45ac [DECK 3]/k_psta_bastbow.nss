void main() {
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	AssignCommand(oSta_bastila, SetFacing(GetFacing(GetObjectByTag("STA_BAST_JUMP", 0))));
	DelayCommand(1.0, AssignCommand(oSta_bastila, SignalEvent(OBJECT_SELF, EventUserDefined(8888))));
  ActionUnlockObject(GetObjectByTag("k45_door_bast2"));
}

