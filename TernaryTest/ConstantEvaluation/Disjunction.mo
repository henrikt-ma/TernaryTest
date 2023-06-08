within TernaryTest.ConstantEvaluation;

model Disjunction
  extends Icons.Example;
  constant __Wolfram_Ternary t = true;
  constant __Wolfram_Ternary f = false;
  constant __Wolfram_Ternary u = __Wolfram_unknown;
equation
  assert((f or f) == f, "Wrong result.");
  assert((f or u) == u, "Wrong result.");
  assert((f or t) == t, "Wrong result.");
  assert((u or f) == u, "Wrong result.");
  assert((u or u) == u, "Wrong result.");
  assert((u or t) == t, "Wrong result.");
  assert((t or f) == t, "Wrong result.");
  assert((t or u) == t, "Wrong result.");
  assert((t or t) == t, "Wrong result.");
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = text);
end Disjunction;
