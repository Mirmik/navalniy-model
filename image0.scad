

union() {
	difference() {
		union() {
			union() {
				union() {
					union() {
						union() {
							union() {
								union() {
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
														rotate(a = [0, 0, 30.0000000000]) {
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
												rotate(a = [0, 0, 90.0000000000]) {
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
										rotate(a = [0, 0, 150.0000000000]) {
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
								rotate(a = [0, 0, 210.0000000000]) {
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
						rotate(a = [0, 0, 270.0000000000]) {
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
				rotate(a = [0, 0, 330.0000000000]) {
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
			union() {
				cylinder(h = 3, r = 30);
				translate(v = [0, 0, 3]) {
					difference() {
						cylinder(h = 3, r = 30);
						cylinder(h = 3, r = 25);
					}
				}
			}
		}
		translate(v = [0, 0, 2.0000000000]) {
			cube(center = true, size = [35.3553390593, 35.3553390593, 2]);
		}
	}
	translate(v = [-17.6776695297, -4.4194173824, 0]) {
		union() {
			cube(size = [8.8388347648, 8.8388347648, 6]);
			translate(v = [17.6776695297, 0, 0]) {
				cube(size = [17.6776695297, 8.8388347648, 6]);
			}
		}
	}
}
