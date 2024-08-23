document.getElementById('btn-converter').addEventListener('click', function (e) {
  e.preventDefault();

  let temperatura = document.getElementById('temperatura').value;
  let conversao = document.getElementById('conversao').value;
  let resultado;

  if (conversao == 'paraFahrenheit') {
    resultado = temperatura * 1.8 + 32;
  }

  if (conversao == 'paraCelsius') {
    resultado = (temperatura - 32) / 1.8;
  }

  document.getElementById('resultado').innerText = resultado.toFixed(2);

});