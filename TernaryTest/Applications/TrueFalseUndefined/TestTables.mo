within TernaryTest.Applications.TrueFalseUndefined;

model TestTables
  extends Icons.Example;

  function ternaryOf0to2
    input Integer n;
    output __Wolfram_Ternary t = if n < 1 then false elseif n > 1 then true else __Wolfram_unknown;
  end ternaryOf0to2;

  function andFun
    input __Wolfram_Ternary x;
    input __Wolfram_Ternary y;
    output __Wolfram_Ternary result = TruthTables.conjunction[x, y];
    annotation(Inline = false);
  end andFun;

  Integer i = integer(floor(time));
  __Wolfram_Ternary x = ternaryOf0to2(mod(i, 3));
  __Wolfram_Ternary y = ternaryOf0to2(mod(div(i, 3), 3));
  __Wolfram_Ternary x_con_y = andFun(x, y) "To be compared with (but not equal to) x_and_y";
  __Wolfram_Ternary x_dis_y = TruthTables.disjunction[x, y] "To be compared with (but not equal to) x_or_y";
  __Wolfram_Ternary x_and_y = x and y "Built-in conjunction of x and y";
  __Wolfram_Ternary x_or_y = x or y "Built-in disjunction of x and y";
  annotation(experiment(StopTime = 10.0), TestCase(shoudPass = true), preferredView = text);
end TestTables;
