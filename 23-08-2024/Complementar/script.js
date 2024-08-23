document.getElementById('botao-enviar').addEventListener('click', function (e) {
  e.preventDefault();

  let nome = document.getElementById('nome').value;

  document.getElementById('paragrafo').innerText = nome;

})