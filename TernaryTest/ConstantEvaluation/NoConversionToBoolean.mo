within TernaryTest.ConstantEvaluation;

model NoConversionToBoolean
  extends Icons.NegativeExample;
  constant Boolean b = __Wolfram_Ternary(false);
  annotation(TestCase(shoudPass = false), preferredView = text);
end NoConversionToBoolean;
