void main() {
	SignalEvent(GetObjectByTag("dan14_rahasia", 0), EventUserDefined(20));
	SignalEvent(GetObjectByTag("dan14_nurik", 0), EventUserDefined(20));
	DestroyObject(GetObjectByTag("dan14ad_drd03", 0), 0.0, 1, 0.0);
	DestroyObject(GetObjectByTag("dan14ad_drd04", 0), 0.0, 1, 0.0);
}

