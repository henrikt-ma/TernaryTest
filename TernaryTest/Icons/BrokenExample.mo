within TernaryTest.Icons;

partial model BrokenExample "Icon for example of a non-working model"
  annotation(preferredView = icon, Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(visible = true, lineColor = {0, 114, 195}, fillColor = {0, 114, 195}, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}}), Line(visible = true, origin = {4.843, -3.464}, points = {{65.157, 103.464}, {25.157, 61.707}, {31.419, 31.073}, {-27.202, 23.464}, {5.157, -51.753}, {-44.843, -71.42}, {-57.792, -106.536}}, color = {255, 0, 0}, thickness = 30), Line(visible = true, origin = {4.843, -3.464}, points = {{65.157, 103.464}, {25.157, 61.707}, {31.419, 31.073}, {-27.202, 23.464}, {5.157, -51.753}, {-44.843, -71.42}, {-58.169, -106.536}}, color = {255, 255, 255}, thickness = 24)}));
end BrokenExample;