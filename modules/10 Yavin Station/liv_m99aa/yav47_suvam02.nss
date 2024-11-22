void main() {
  SetGlobalNumber("YAV_SUVAM", 1);
  DelayCommand(1.0, SignalEvent(GetObjectByTag("yav47_suvam", 0), EventUserDefined(2007)));
}
