void main() {
	object oArea = GetArea(OBJECT_SELF);
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
	object oKor33b_victim1 = GetObjectByTag("kor33b_victim1", 0);
	vector vPosition = GetPosition(oKor33b_victim1);
	SetFacingPoint(vPosition);
}

