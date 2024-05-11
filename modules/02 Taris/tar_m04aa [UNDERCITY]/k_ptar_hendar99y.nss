void main() {
	AssignCommand(GetObjectByTag("OutcastWoman043", 0), ActionForceMoveToObject(GetObjectByTag("tar04_hendartent", 0), 1, 1.0, 30.0));
	DestroyObject(GetObjectByTag("OutcastWoman043", 0), 5.0, 0, 0.0);
}

