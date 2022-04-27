within TernaryTest.Parameters;

model MixedIterationInitialization
  extends Icons.Example;
  parameter Boolean b = false;
  parameter __Wolfram_Ternary p(fixed = false, start = b);
  Real x(fixed = false, start = if b then 1.5 else -1.5);
initial equation
  p = if x < (-0.5) then false elseif x > 0.5 then true else __Wolfram_unknown;
equation
  x = if p == false then -1.0 elseif p == true then 1.0 else 0.0;
  assert(p == b, "Wrong value.");
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = text);
end MixedIterationInitialization;
