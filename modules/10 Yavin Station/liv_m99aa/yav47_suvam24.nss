void main() {
	if ((GetGlobalNumber("YAV_SUVAM_NUM") >= 10)) {
		DelayCommand(0.1, OpenStore(GetObjectByTag("suvam03a", 0), GetFirstPC(), (-20), 0));
	}
	else {
		if ((GetGlobalBoolean("YAV_SUVAMD") == 1)) {
			DelayCommand(0.1, OpenStore(GetObjectByTag("suvam03a", 0), GetFirstPC(), (-5), 0));
		}
		else {
			DelayCommand(0.1, OpenStore(GetObjectByTag("suvam03a", 0), GetFirstPC(), 0, 0));
		}
	}
	DelayCommand(1.0, SignalEvent(GetObjectByTag("yav47_suvam", 0), EventUserDefined(2007)));
}

