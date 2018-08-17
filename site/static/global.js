$(document).ready(function(){


  $('#prediction').click(async function(){

    const response = await $.ajax('/score', {
      method: 'post',
      contentType: 'application/json'
    });

    $('#output').val(response.name);




    var body = d3.select('body');

    var div_select = d3.select('#input_div')

    var div = div_select.insert("div", "div")
      .attr("height", 20);

    var width = div.style('width');

    var wid = width.slice(0, -2);
    var width_int = parseInt(wid, 10);


    var svg = div.append('svg')
      .attr("width", width)
      .attr("class", "foo");



    svg.append('rect')
      .attr('width', 40)
      .attr("height", 20)
      .attr('x', (width_int/2 - 20))
      .style("fill", '#99d8c9');

    var start = Date.now();

    console.log(start);

    svg.append('text')
      .attr("x", (width_int/2 - 20))
      .attr("y", 20)
      .text(response.name);


      // .attrs({ width: 500, height: 200 });

    // var div = d3.select("body");
    //
    // console.log(div);
    //
    // var bar = div.selectAll("g")
    //   // .data(response)
    //   // .enter()
    //   // .append("g");
    //
    // console.log(bar);
    //
    // bar.append("rect")
    //   // .attr("y", function(d) { return y(d.value); })
    //   .attr("height", 20)
    //   .attr("width", 50)
    //   // .style("fill", function(d) { return d.color; });
    //   .style("fill", 'purple');
    //
    // bar.append("text")
    //   .text("text")

  });

});
