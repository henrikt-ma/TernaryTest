within TernaryTest.ConstantEvaluation;

model ConditionalComponentCorrect
  extends Icons.Example;
  constant __Wolfram_Ternary t = __Wolfram_unknown;
  output Real y if t == true;
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end ConditionalComponentCorrect;
