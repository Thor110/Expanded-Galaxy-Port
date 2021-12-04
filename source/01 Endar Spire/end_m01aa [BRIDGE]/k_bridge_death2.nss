void main() {
	if (GetIsDead(GetObjectByTag("end_gensith2"))
    &&GetIsDead(GetObjectByTag("end_gensith1"))) {
    object oLocked1 = GetObjectByTag("end_door10_cut2");
    DelayCommand(0.5, SetLocked(oLocked1, FALSE));
	}
}

