

union() {
	union() {
		cylinder(h = 3, r = 30);
		translate(v = [0, 0, 3]) {
			difference() {
				cylinder(h = 3, r = 30);
				cylinder(h = 3, r = 25);
			}
		}
	}
	union() {
		union() {
			union() {
				union() {
					union() {
						translate(v = [0, 29.5803989155, 0]) {
							translate(v = [-5.0000000000, 0, 0]) {
								difference() {
									cube(size = [10, 5, 3]);
									translate(v = [2.0000000000, 0, 0]) {
										cube(size = [6, 3, 10]);
									}
								}
							}
						}
						rotate(a = [0, 0, 60.0000000000]) {
							translate(v = [0, 29.5803989155, 0]) {
								translate(v = [-5.0000000000, 0, 0]) {
									difference() {
										cube(size = [10, 5, 3]);
										translate(v = [2.0000000000, 0, 0]) {
											cube(size = [6, 3, 10]);
										}
									}
								}
							}
						}
					}
					rotate(a = [0, 0, 120.0000000000]) {
						translate(v = [0, 29.5803989155, 0]) {
							translate(v = [-5.0000000000, 0, 0]) {
								difference() {
									cube(size = [10, 5, 3]);
									translate(v = [2.0000000000, 0, 0]) {
										cube(size = [6, 3, 10]);
									}
								}
							}
						}
					}
				}
				rotate(a = [0, 0, 180.0000000000]) {
					translate(v = [0, 29.5803989155, 0]) {
						translate(v = [-5.0000000000, 0, 0]) {
							difference() {
								cube(size = [10, 5, 3]);
								translate(v = [2.0000000000, 0, 0]) {
									cube(size = [6, 3, 10]);
								}
							}
						}
					}
				}
			}
			rotate(a = [0, 0, 240.0000000000]) {
				translate(v = [0, 29.5803989155, 0]) {
					translate(v = [-5.0000000000, 0, 0]) {
						difference() {
							cube(size = [10, 5, 3]);
							translate(v = [2.0000000000, 0, 0]) {
								cube(size = [6, 3, 10]);
							}
						}
					}
				}
			}
		}
		rotate(a = [0, 0, 300.0000000000]) {
			translate(v = [0, 29.5803989155, 0]) {
				translate(v = [-5.0000000000, 0, 0]) {
					difference() {
						cube(size = [10, 5, 3]);
						translate(v = [2.0000000000, 0, 0]) {
							cube(size = [6, 3, 10]);
						}
					}
				}
			}
		}
	}
}
