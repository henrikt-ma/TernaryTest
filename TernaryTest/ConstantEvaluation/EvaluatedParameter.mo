within TernaryTest.ConstantEvaluation;

model EvaluatedParameter
  extends Icons.Example;
  parameter __Wolfram_Ternary p = false;
  output Real y if p > false;
  annotation(TestCase(shoudPass = true), preferredView = text);
end EvaluatedParameter;
