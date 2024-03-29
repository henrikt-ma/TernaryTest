within TernaryTest.Parameters;

model DeclarationEquation
  extends Icons.Example;
  parameter Boolean b = false;
  parameter __Wolfram_Ternary p = not b;
equation
  assert(p == (not b), "Wrong value.");
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end DeclarationEquation;
