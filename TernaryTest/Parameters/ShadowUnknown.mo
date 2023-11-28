within TernaryTest.Parameters;

model ShadowUnknown
  extends Icons.Example;
  parameter __Wolfram_Ternary __Wolfram_unknown = true; /* Warning expected for deprecated use of reserved name. */
  parameter __Wolfram_Ternary x = __Wolfram_unknown;
equation
  assert(x == true, "Wrong value of x.");
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end ShadowUnknown;
