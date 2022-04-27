within TernaryTest.ConstantEvaluation;

model Conjunction
  extends Icons.Example;
  constant __Wolfram_Ternary t = true;
  constant __Wolfram_Ternary f = false;
  constant __Wolfram_Ternary u = __Wolfram_unknown;
equation
  assert(f and f == f, "Wrong result.");
  assert(f and u == f, "Wrong result.");
  assert(f and t == f, "Wrong result.");
  assert(u and f == f, "Wrong result.");
  assert(u and u == u, "Wrong result.");
  assert(u and t == u, "Wrong result.");
  assert(t and f == f, "Wrong result.");
  assert(t and u == u, "Wrong result.");
  assert(t and t == t, "Wrong result.");
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = text);
end Conjunction;
