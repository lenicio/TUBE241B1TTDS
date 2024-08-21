document.getElementById('btn-enviar')
.addEventListener('click', function(e) {
  e.preventDefault(); // Impede a pag de recarregar ao enviar o formulário

  let nome = document.getElementById('input-nome').value;
  let idade = document.getElementById('input-idade').value;


  if(idade < 0) {
    alert("Idade inválida!");
  }


  document.getElementById('nome').innerText = `O nome digitado foi: ${nome}`;
  
})
