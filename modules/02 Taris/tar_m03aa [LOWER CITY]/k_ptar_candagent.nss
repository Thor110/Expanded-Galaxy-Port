void main() {
	object oCanderous032 = GetObjectByTag("canderous032", 0);
	SignalEvent(oCanderous032, EventUserDefined(2000));
	DestroyObject(GetObjectByTag("blackvulka034", 0), 0.0, 1, 0.0);
	DestroyObject(GetObjectByTag("blackvulka035", 0), 0.0, 1, 0.0);
}
