within TernaryTest.ConstantEvaluation;

model ImplicitConversion
  extends Icons.Example;
  constant __Wolfram_Ternary t = true;
  constant __Wolfram_Ternary f = false;
equation
  assert(t == __Wolfram_Ternary(true), "Wrong value of x.");
  assert(f == __Wolfram_Ternary(false), "Wrong value of x.");
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = text);
end ImplicitConversion;
