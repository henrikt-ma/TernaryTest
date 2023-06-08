within TernaryTest.ConstantEvaluation;

model ExplicitConversion
  extends Icons.Example;
  constant __Wolfram_Ternary t = __Wolfram_Ternary(true);
  constant __Wolfram_Ternary f = __Wolfram_Ternary(false);
equation
  assert(t == __Wolfram_Ternary(true), "Wrong value of x.");
  assert(f == __Wolfram_Ternary(false), "Wrong value of x.");
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end ExplicitConversion;
