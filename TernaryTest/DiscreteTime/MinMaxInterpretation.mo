within TernaryTest.DiscreteTime;

model MinMaxInterpretation
  extends Icons.Example;

  function ternaryOf0to2
    input Integer n;
    output __Wolfram_Ternary t = if n < 1 then false elseif n > 1 then true else __Wolfram_unknown;
  end ternaryOf0to2;

  Integer i = integer(floor(time));
  __Wolfram_Ternary x = ternaryOf0to2(mod(i, 3));
  __Wolfram_Ternary y = ternaryOf0to2(mod(div(i, 3), 3));
  __Wolfram_Ternary x_and_y = x and y "To be compared with xy_min";
  __Wolfram_Ternary x_or_y = x or y "To be compared with xy_max";
  __Wolfram_Ternary xy_min = min(x, y);
  __Wolfram_Ternary xy_max = max(x, y);
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = text);
end MinMaxInterpretation;
