void main() {
	PlaySound("cs_gizkabeg");
	SetFacingPoint(GetPosition(GetPCSpeaker()));
	ActionPlayAnimation(108, 1.0, 0.0);
}
