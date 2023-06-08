within TernaryTest.ConstantEvaluation;

model ArrayReduction
  extends Icons.Example;
  constant __Wolfram_Ternary t = true;
  constant __Wolfram_Ternary f = false;
  constant __Wolfram_Ternary u = __Wolfram_unknown;
  constant __Wolfram_Ternary conjunction = min(x for x in {t, f, u}) "Reduction with min corresponds to conjunction";
  constant __Wolfram_Ternary disjunction = max(x for x in {t, f, u}) "Reduction with max corresponds to disjunction";
equation
  assert(conjunction == f, "Wrong result.");
  assert(disjunction == t, "Wrong result.");
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end ArrayReduction;
