void main() {
	object oMr_dead = GetObjectByTag("mr_dead", 0);
	DelayCommand(2.0, ActionDoCommand(DestroyObject(oMr_dead, 0.0, 0, 0.0)));
}

