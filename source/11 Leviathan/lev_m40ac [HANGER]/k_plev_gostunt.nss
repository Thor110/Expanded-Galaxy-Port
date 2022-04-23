void main() {
	RemovePartyMember(0);
	RemovePartyMember(2);
	SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
	MusicBackgroundStop(GetArea(OBJECT_SELF));
	DelayCommand(0.2, MusicBackgroundChangeNight(GetArea(OBJECT_SELF), 11));
	DelayCommand(0.2, MusicBackgroundChangeDay(GetArea(OBJECT_SELF), 11));
	NoClicksFor(1.2);
	DelayCommand(1.0, StartNewModule("stunt_31b", "", "31a", "", "", "", "", ""));
}

