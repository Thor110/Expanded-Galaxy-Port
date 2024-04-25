void main() {
	object oMr_starter = GetObjectByTag("mr_starter", 0);
	DelayCommand(2.0, ActionDoCommand(DestroyObject(oMr_starter, 0.0, 0, 0.0)));
}

