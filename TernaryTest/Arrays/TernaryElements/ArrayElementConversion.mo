within TernaryTest.Arrays.TernaryElements;

model ArrayElementConversion
  extends Icons.Example;
  constant __Wolfram_Ternary[3, 3] c = {{false, false, false}, {false, __Wolfram_unknown, true}, {false, true, true}};
  __Wolfram_Ternary[3, 3] t = {{false, false, false}, {false, __Wolfram_Ternary(time < 5), true}, {false, true, true}};
  __Wolfram_Ternary t22 = __Wolfram_unknown or t[2, 2];
  annotation(experiment(StopTime = 10.0), TestCase(shoudPass = true), preferredView = text);
end ArrayElementConversion;
