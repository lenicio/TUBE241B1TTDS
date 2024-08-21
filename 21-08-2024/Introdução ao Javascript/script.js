document.getElementById('btn-enviar')
.addEventListener('click', function(e) {
  e.preventDefault(); // Impede a pag de recarregar ao enviar o formulário

  let nome = document.getElementById('input-nome').value;

  document.getElementById('nome').innerText = `O nome digitado foi: ${nome}`;
  
})