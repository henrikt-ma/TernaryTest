within TernaryTest.ConstantEvaluation;

model ConditionalComponentError
  extends Icons.NegativeExample;
  output Real y if __Wolfram_Ternary(false);
  annotation(preferredView = "text", TestCase(shoudPass = false));
end ConditionalComponentError;
