let contador = 0;

document.getElementById('botao').addEventListener('click', function () {
  contador++;

  document.getElementById('resultado').innerText = contador;
})