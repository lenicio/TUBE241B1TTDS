document.getElementById('btn_calcular').addEventListener('click', function (e) {
  e.preventDefault();

  let peso = document.getElementById('input_peso').value;
  let altura = document.getElementById('input_altura').value;
  let resultado;
  let imc = peso / (altura * altura);

  if (imc < 18.5) {
    resultado = 'MAGREZA';
  } else if (imc < 24.9) {
    resultado = 'NORMAL';
  } else if (imc < 29.9) {
    resultado = 'SOBREPESO';
  } else if (imc < 39.9) {
    resultado = 'OBESIDADE';
  } else {
    resultado = 'OBESIDADE GRAVE';
  }

  document.getElementById('resultado').innerText = resultado;


})