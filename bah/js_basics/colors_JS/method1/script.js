var d3colors = Plotly.d3.scale.category10();
var color_div = document.getElementById('colors');
var data = [];

for (var i = 0; i < 11; i += 1) {
  data.push({
x: [i],
y: [i + 1],
name: i + ": Color: " + d3colors(i),
type: 'bar'
  });
}
Plotly.plot('colors', data);

var node;
var textnode;
for (var i = 0; i < 10; i += 1) {
  var color = d3colors(i);
  node = document.createElement("div");
  node.style.color = color;
  var text = "D3: " + color;
  textnode = document.createTextNode(text);
  node.appendChild(textnode);
  node.appendChild(document.createElement("br"));
  var rgb = Plotly.d3.selectAll('.point').selectAll('path')[i][0].style.fill;
  color = Plotly.d3.rgb(rgb).toString()
  var text = "Plotly: " + color + " ; " + rgb;
  textnode = document.createTextNode(text);
  node.appendChild(textnode);
  color_div.appendChild(node); 
}