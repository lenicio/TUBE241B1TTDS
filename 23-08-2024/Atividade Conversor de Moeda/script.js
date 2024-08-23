document.getElementById('input-botao').addEventListener('click', function (e) {
  e.preventDefault();

  let valor = document.getElementById('input-valor').value;

  document.getElementById('resultado').innerText = "$" +  valor / 5;

})