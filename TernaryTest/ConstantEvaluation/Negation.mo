within TernaryTest.ConstantEvaluation;

model Negation
  extends Icons.Example;
  constant __Wolfram_Ternary t = true;
  constant __Wolfram_Ternary f = false;
  constant __Wolfram_Ternary u = __Wolfram_unknown;
equation
  assert((not f) == t, "Wrong result.");
  assert((not u) == u, "Wrong result.");
  assert((not t) == f, "Wrong result.");
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end Negation;
