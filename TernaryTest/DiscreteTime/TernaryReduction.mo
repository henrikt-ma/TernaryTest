within TernaryTest.DiscreteTime;

model TernaryReduction
  extends Icons.Example;

  function ternaryOf0to2
    input Integer n;
    output __Wolfram_Ternary t = if n < 1 then false elseif n > 1 then true else __Wolfram_unknown;
  end ternaryOf0to2;

  Integer i = integer(floor(3 * time));
  __Wolfram_Ternary x = ternaryOf0to2(mod(i, 3));
  __Wolfram_Ternary a = min(t or x for t in __Wolfram_Ternary);
  __Wolfram_Ternary b = max(t or x for t in __Wolfram_Ternary);
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end TernaryReduction;
