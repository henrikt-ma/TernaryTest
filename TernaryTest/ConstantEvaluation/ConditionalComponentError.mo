within TernaryTest.ConstantEvaluation;

model ConditionalComponentError
  extends Icons.NegativeExample;
  output Real y if __Wolfram_Ternary(false);
  annotation(experiment(StopTime = 10.0), preferredView = "text", TestCase(shoulDpass = false));
end ConditionalComponentError;
