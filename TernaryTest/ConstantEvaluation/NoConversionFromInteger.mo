within TernaryTest.ConstantEvaluation;

model NoConversionFromInteger
  extends Icons.NegativeExample;
  constant __Wolfram_Ternary u = __Wolfram_Ternary(0);
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = false), preferredView = text);
end NoConversionFromInteger;
