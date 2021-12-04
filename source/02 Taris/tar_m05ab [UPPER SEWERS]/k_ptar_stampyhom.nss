// Globals
	int intGLOB_21 = 1100;

void main() {
	object oTar05_stampy = GetObjectByTag("tar05_stampy", 0);
	object oEntering = GetEnteringObject();
	if (GetIsPC(oEntering)) {
		SignalEvent(oTar05_stampy, EventUserDefined(intGLOB_21));
	}
}

