contract C {
	function f() public pure {
		address[2] memory a;
		assert(a.length == 2); // should hold
		assert(a.length < 2); // should fail
		assert(a.length > 2); // should fail
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (106-126): CHC: Assertion violation happens here.\nCounterexample:\n\na = [0, 0]\n\nTransaction trace:\nC.constructor()\nC.f()
// Warning 6328: (145-165): CHC: Assertion violation happens here.\nCounterexample:\n\na = [0, 0]\n\nTransaction trace:\nC.constructor()\nC.f()