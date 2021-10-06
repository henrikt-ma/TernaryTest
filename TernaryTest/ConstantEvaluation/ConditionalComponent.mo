within TernaryTest.ConstantEvaluation;

model ConditionalComponent
  extends Icons.NegativeExample;
  output Real y if __Wolfram_Ternary(false);
  annotation(TestCase(shoudPass = false), preferredView = text);
end ConditionalComponent;
