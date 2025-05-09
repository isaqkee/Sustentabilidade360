function abrirModal(titulo, imagem, descricao, estrela, horario) {
    document.getElementById('modal-img').src = imagem;
    document.getElementById('modal-title').innerText = titulo;
    document.getElementById('modal-desc').innerText = descricao;
    document.getElementById('modal-stars').innerText = estrela;
    document.getElementById('modal-hours').innerText = horario;
    document.getElementById('modal').style.display = 'flex';
  }
  
  function fecharModal() {
    document.getElementById('modal').style.display = 'none';
  }
  
  function votar(tipo) {
    const botoes = document.querySelectorAll('.thumbs button');
    botoes.forEach(btn => btn.classList.remove('selected', 'selected-dislike'));
  
    if (tipo === 'up') {
      botoes[0].classList.add('selected');
    } else {
      botoes[1].classList.add('selected-dislike'); // Aplicando o estilo de deslike
    }

  }
  