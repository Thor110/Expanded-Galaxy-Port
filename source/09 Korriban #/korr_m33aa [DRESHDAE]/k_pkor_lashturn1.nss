void main() {
	object oLas_friend1 = GetObjectByTag("las_friend1", 0);
	vector vPosition = GetPosition(oLas_friend1);
	SetFacingPoint(vPosition);
}

