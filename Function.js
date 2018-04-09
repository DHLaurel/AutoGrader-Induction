const WolframAlphaAPI = require('wolfram-alpha-api');
const waApi = WolframAlphaAPI('AH4R6V-3QUP7RQ6UU');

function work(){
  waApi.getFull('sin(x)').then((queryresult) => {
    const pods = queryresult.pods;
    const output = pods.map((pod) => {
      const subpodContent = pod.subpods.map(subpod =>
        `  <img src="${subpod.img.src}" alt="${subpod.img.alt}">`
     ).join('\n');
      return `<h2>${pod.title}</h2>\n${subpodContent}`;
    }).join('\n');
   document.getElementById("demo").innerHTML = output;
   console.log(output);
  }).catch(console.error);
}
