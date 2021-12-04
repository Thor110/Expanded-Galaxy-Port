void main() {
	object object1 = OBJECT_SELF;
	DelayCommand(10.0, SignalEvent(object1, EventUserDefined(100)));
}

