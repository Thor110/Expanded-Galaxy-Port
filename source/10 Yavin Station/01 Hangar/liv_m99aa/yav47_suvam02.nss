void main() {
  SetGlobalNumber("YAV_SUVAM", 1);
  //SetGlobalNumber("SLE_FIREBLOODS", 1);
  // This doesn't seem to be working . . .
	DelayCommand(1.0, SignalEvent(GetObjectByTag("yav47_suvam", 0), EventUserDefined(2007)));
  // This User Defined Event is happening . . .
}
