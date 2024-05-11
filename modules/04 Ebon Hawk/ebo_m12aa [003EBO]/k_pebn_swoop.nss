// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;

// Prototypes
void sub3(object objectParam1, int intParam2, int intParam3);
void sub2(object objectParam1);
int sub1(object objectParam1, int intParam2);

void sub3(object objectParam1, int intParam2, int intParam3) {
	if ((((intParam2 >= 0) && (intParam2 <= 9)) && GetIsObjectValid(objectParam1))) {
		if (((intParam3 == 1) || (intParam3 == 0))) {
			SetLocalBoolean(objectParam1, intParam2, intParam3);
		}
	}
}

void sub2(object objectParam1) {
	int int1 = 1;
	int1;
	while ((int1 <= 10)) {
		sub3(objectParam1, int1, 0);
		(int1++);
	}
}

int sub1(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 9)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	object oPebn_swoopdrd = GetObjectByTag("pebn_swoopdrd", 0);
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	if ((nGlobal == 5)) {
		StartNewModule("", "k_end_ebon_hawk_transition", "", "");
	}
	else {
		if ((nGlobal == 10)) {
			if (sub1(oPebn_swoopdrd, 1)) {
				sub2(oPebn_swoopdrd);
				StartNewModule("tar_m02ab", "K_PTAR_SWOOP_POINT_01", "", "");
			}
			else {
				if (sub1(oPebn_swoopdrd, 2)) {
					sub2(oPebn_swoopdrd);
					StartNewModule("tar_m02ab", "K_PTAR_SWOOP_POINT_02", "", "");
				}
				else {
					if (sub1(oPebn_swoopdrd, 3)) {
						sub2(oPebn_swoopdrd);
						StartNewModule("tar_m02ac", "K_PTAR_SWOOP_POINT_03", "", "");
					}
					else {
						if (sub1(oPebn_swoopdrd, 4)) {
							sub2(oPebn_swoopdrd);
							StartNewModule("tar_m02ac", "K_PTAR_SWOOP_POINT_04", "", "");
						}
						else {
							if (sub1(oPebn_swoopdrd, 5)) {
								sub2(oPebn_swoopdrd);
								StartNewModule("tar_m03aa", "K_PTAR_SWOOP_POINT_05", "", "");
							}
							else {
								if (sub1(oPebn_swoopdrd, 6)) {
									sub2(oPebn_swoopdrd);
									StartNewModule("tar_m03aa", "K_PTAR_SWOOP_POINT_06", "", "");
								}
								else {
									if (sub1(oPebn_swoopdrd, 7)) {
										sub2(oPebn_swoopdrd);
										StartNewModule("tar_m04aa", "K_PTAR_SWOOP_POINT_07", "", "");
									}
									else {
										if (sub1(oPebn_swoopdrd, 8)) {
											sub2(oPebn_swoopdrd);
											StartNewModule("tar_m04aa", "K_PTAR_SWOOP_POINT_08", "", "");
										}
										else {
											if (sub1(oPebn_swoopdrd, 9)) {
												sub2(oPebn_swoopdrd);
												StartNewModule("tar_m04aa", "K_PTAR_SWOOP_POINT_09", "", "");
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		else {
			if ((nGlobal == 15)) {
				if (sub1(oPebn_swoopdrd, 1)) {
					sub2(oPebn_swoopdrd);
					StartNewModule("danm13", "K_DAN_SWOOP_POINT_01", "", "");
				}
				else {
					if (sub1(oPebn_swoopdrd, 2)) {
						sub2(oPebn_swoopdrd);
						StartNewModule("danm14aa", "K_DAN_SWOOP_POINT_02", "", "");
					}
					else {
						if (sub1(oPebn_swoopdrd, 3)) {
							sub2(oPebn_swoopdrd);
							StartNewModule("danm14ad", "K_DAN_SWOOP_POINT_03", "", "");
						}
						else {
							if (sub1(oPebn_swoopdrd, 4)) {
								sub2(oPebn_swoopdrd);
								StartNewModule("danm14ab", "K_DAN_SWOOP_POINT_04", "", "");
							}
							else {
								if (sub1(oPebn_swoopdrd, 5)) {
									sub2(oPebn_swoopdrd);
									StartNewModule("danm14ac", "K_DAN_SWOOP_POINT_05", "", "");
								}
							}
						}
					}
				}
			}
			else {
				if ((nGlobal == 20)) {
					if (sub1(oPebn_swoopdrd, 1)) {
						sub2(oPebn_swoopdrd);
						StartNewModule("kas_m22ab", "K_KAS_SWOOP_POINT_01", "", "");
					}
					else {
						if (sub1(oPebn_swoopdrd, 2)) {
							sub2(oPebn_swoopdrd);
							StartNewModule("kas_m23aa", "K_KAS_SWOOP_POINT_02", "", "");
						}
						else {
							if (sub1(oPebn_swoopdrd, 3)) {
								sub2(oPebn_swoopdrd);
								StartNewModule("kas_m24aa", "K_KAS_SWOOP_POINT_03", "", "");
							}
							else {
								if (sub1(oPebn_swoopdrd, 4)) {
									sub2(oPebn_swoopdrd);
									StartNewModule("kas_m25aa", "K_KAS_SWOOP_POINT_04", "", "");
								}
							}
						}
					}
				}
				else {
					if ((nGlobal == 25)) {
						if (sub1(oPebn_swoopdrd, 1)) {
							sub2(oPebn_swoopdrd);
							StartNewModule("manm26aa", "K_MAN_SWOOP_POINT_01", "", "");
						}
						else {
							if (sub1(oPebn_swoopdrd, 2)) {
								sub2(oPebn_swoopdrd);
								StartNewModule("manm26ac", "K_MAN_SWOOP_POINT_02", "", "");
							}
							else {
								if (sub1(oPebn_swoopdrd, 3)) {
									sub2(oPebn_swoopdrd);
									StartNewModule("manm26ab", "K_MAN_SWOOP_POINT_03", "", "");
								}
								else {
									if (sub1(oPebn_swoopdrd, 4)) {
										sub2(oPebn_swoopdrd);
										StartNewModule("manm26ab", "K_MAN_SWOOP_POINT_04", "", "");
									}
									else {
										if (sub1(oPebn_swoopdrd, 5)) {
											sub2(oPebn_swoopdrd);
											StartNewModule("manm26ac", "K_MAN_SWOOP_POINT_05", "", "");
										}
									}
								}
							}
						}
					}
					else {
						if ((nGlobal == 30)) {
							if (sub1(oPebn_swoopdrd, 1)) {
								sub2(oPebn_swoopdrd);
								StartNewModule("korr_m33aa", "K_KOR_SWOOP_POINT_01", "", "");
							}
							else {
								if (sub1(oPebn_swoopdrd, 2)) {
									sub2(oPebn_swoopdrd);
									StartNewModule("korr_m33ab", "K_KOR_SWOOP_POINT_02", "", "");
								}
								else {
									if (sub1(oPebn_swoopdrd, 3)) {
										sub2(oPebn_swoopdrd);
										StartNewModule("korr_m34aa", "K_KOR_SWOOP_POINT_03", "", "");
									}
									else {
										if (sub1(oPebn_swoopdrd, 4)) {
											sub2(oPebn_swoopdrd);
											StartNewModule("korr_m36aa", "K_KOR_SWOOP_POINT_04", "", "");
										}
									}
								}
							}
						}
						else {
							if ((nGlobal == 35)) {
								if (sub1(oPebn_swoopdrd, 1)) {
									sub2(oPebn_swoopdrd);
									StartNewModule("tat_m17aa", "K_TAT_SWOOP_POINT_01", "", "");
								}
								else {
									if (sub1(oPebn_swoopdrd, 2)) {
										sub2(oPebn_swoopdrd);
										StartNewModule("tat_m17aa", "K_TAT_SWOOP_POINT_02", "", "");
									}
									else {
										if (sub1(oPebn_swoopdrd, 3)) {
											sub2(oPebn_swoopdrd);
											StartNewModule("tat_m17aa", "K_TAT_SWOOP_POINT_03", "", "");
										}
										else {
											if (sub1(oPebn_swoopdrd, 4)) {
												sub2(oPebn_swoopdrd);
												StartNewModule("tat_m17aa", "K_TAT_SWOOP_POINT_04", "", "");
											}
											else {
												if (sub1(oPebn_swoopdrd, 5)) {
													sub2(oPebn_swoopdrd);
													StartNewModule("tat_m18ab", "K_TAT_SWOOP_POINT_05", "", "");
												}
												else {
													if (sub1(oPebn_swoopdrd, 6)) {
														sub2(oPebn_swoopdrd);
														StartNewModule("tat_m18ab", "K_TAT_SWOOP_POINT_06", "", "");
													}
													else {
														if (sub1(oPebn_swoopdrd, 7)) {
															sub2(oPebn_swoopdrd);
															StartNewModule("tat_m18ab", "K_TAT_SWOOP_POINT_07", "", "");
														}
													}
												}
											}
										}
									}
								}
							}
							else {
								if ((nGlobal == 40)) {
									StartNewModule("lev_40ac", "k_lev_ebon_hawk_transition", "", "");
								}
								else {
									if ((nGlobal == 45)) {
										StartNewModule("unk_m41aa", "k_unk_ebon_hawk_transition", "", "");
									}
									else {
										if ((nGlobal == 50)) {
											StartNewModule("", "k_sta_ebon_hawk_transition", "", "");
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

