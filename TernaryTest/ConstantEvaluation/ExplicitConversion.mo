within TernaryTest.ConstantEvaluation;

model ExplicitConversion
  extends Icons.Example;
  constant __Wolfram_Ternary t = __Wolfram_Ternary(true);
  constant __Wolfram_Ternary f = __Wolfram_Ternary(false);
  constant __Wolfram_Ternary u = __Wolfram_Ternary(__Wolfram_unknown);
equation
  assert(t == __Wolfram_Ternary(true), "Wrong value of x.");
  assert(f == __Wolfram_Ternary(false), "Wrong value of x.");
  assert(u == __Wolfram_unknown, "Wrong value of x.");
  annotation(experiment(StopTime = 10.0), TestCase(shoudPass = true), preferredView = text);
end ExplicitConversion;
