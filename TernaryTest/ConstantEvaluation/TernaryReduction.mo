within TernaryTest.ConstantEvaluation;

model TernaryReduction
  extends Icons.Example;
  constant __Wolfram_Ternary a = min(x or __Wolfram_unknown for x in __Wolfram_Ternary);
  constant __Wolfram_Ternary b = max(x or __Wolfram_unknown for x in __Wolfram_Ternary);
equation
  assert(a == __Wolfram_unknown, "Wrong result.");
  assert(b == true, "Wrong result.");
  annotation(experiment(StopTime = 10.0), TestCase(shoudPass = true), preferredView = text);
end TernaryReduction;
