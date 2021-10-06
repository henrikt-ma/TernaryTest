within TernaryTest.Parameters;

model InitialEquation
  extends Icons.Example;
  parameter Boolean b = false;
  parameter __Wolfram_Ternary p(fixed = false);
initial equation
  p = not b;
equation
  assert(p == (not b), "Wrong value.");
  annotation(TestCase(shoudPass = true), preferredView = text);
end InitialEquation;
