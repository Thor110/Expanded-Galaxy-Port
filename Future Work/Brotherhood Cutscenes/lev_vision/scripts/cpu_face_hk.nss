void main() {
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	AssignCommand(oCpu_guy, SetFacingPoint(Vector(278.24, 55.22, 9.0)));
	DelayCommand(3.0, AssignCommand(oCpu_guy, SetFacingPoint(Vector(273.44, 55.36, 9.0))));
}

