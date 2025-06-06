function formataHora(horarioCompleto) {
  const partes = horarioCompleto.split(':');
  const horas = parseInt(partes[0], 10);
  const minutos = parseInt(partes[1], 10);

  return minutos === 0 ? `${horas}` : `${horas}:${minutos.toString().padStart(2, '0')}`;
}


function fecharChat() {
  const chatbot = document.querySelector('.chatbot');
  const minimized = document.querySelector('.chatbot-minimized');

  chatbot.style.display = 'none';
  minimized.style.display = 'flex';
}

function abrirChat() {
  const chatbot = document.querySelector('.chatbot');
  const minimized = document.querySelector('.chatbot-minimized');

  chatbot.style.display = 'block';
  minimized.style.display = 'none';
}

function responder(pergunta) {
  let resposta = '';

  if (pergunta === 'horarios') {
    resposta = 'Varia em cada ponto de coleta, veja ao clicar.';
  } else if (pergunta === 'tipos') {
    resposta = 'Você pode levar pilhas, lixos eletrônicos, baterias e etc.';
  } else if (pergunta === 'local') {
    resposta = 'Todos ficam em São Paulo.';
  }

  const botBody = document.getElementById('chatbot-body');
  const novaMsg = document.createElement('div');
  novaMsg.className = 'bot-message';
  novaMsg.textContent = resposta;
  botBody.appendChild(novaMsg);

  botBody.scrollTop = botBody.scrollHeight;
}

function abrirModal(nome, site, endereco, bairro, funcionamento_dias, funcionamento_hora_inicio, funcionamento_hora_fim) {
  document.getElementById('modal-nome').innerHTML = `<h2>${nome}</h2>`;
  
  if (site === "")
    site = "#";
  else
    document.getElementById('modal-nome').target = "_blank";

  document.getElementById('modal-nome').href = site;
  
  document.getElementById('modal-endereco').innerText = endereco;
  document.getElementById('modal-bairro').innerText = bairro;
  
  // formatação da hora.. se não estiver zerada, usa
  funcionamento_hora_inicio = formataHora(funcionamento_hora_inicio);
  funcionamento_hora_fim = formataHora(funcionamento_hora_fim);
  
  if (funcionamento_hora_inicio != "0" && funcionamento_hora_fim != "0") {
    document.getElementById('modal-funcionamento').innerText = funcionamento_dias + " das " + funcionamento_hora_inicio + "h às " + funcionamento_hora_fim + "h";
  }
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
    botoes[1].classList.add('selected-dislike');
  }

  // const local = document.getElementById('modal-title').innerText;

  // // Enviar votos
  // fetch('http://10.104.2.64:5000/votar', {
  //   method: 'POST',
  //   headers: {
  //     'Content-Type': 'application/json'
  //   },
  //   body: JSON.stringify({
  //     local: local,
  //     voto: tipo
  //   })
  // })
  // .then(response => response.json())
  // .then(data => {
  //   console.log('Voto enviado com sucesso:', data);
  // })
  // .catch(error => {
  //   console.error('Erro ao enviar voto:', error);
  // });
}

async function carregarPontosColeta() {
  const tbody = document.getElementById('pontos-coleta');
  tbody.innerHTML = ''; // limpa a tabela

  try {
    const response = await fetch('http://localhost:5000/pontos');
    if (!response.ok) {
      throw new Error(`Erro HTTP! status: ${response.status}`);
    }
    const pontos = await response.json();

    pontos.forEach(ponto => {
      const tr = document.createElement('tr');
      tr.classList.add('bloco');
      const td = document.createElement('td');
      td.setAttribute('onclick',
        `abrirModal(
          '${ponto.nome}',
          '${ponto.site}',
          '${ponto.endereco}',
          '${ponto.bairro}',
          '${ponto.funcionamento_dias}',
          '${ponto.funcionamento_hora_inicio}',
          '${ponto.funcionamento_hora_fim}'
          )
        `);
      td.innerText = ponto.nome;
      tr.appendChild(td);
      tbody.appendChild(tr);
    });

  } catch (error) {
    console.error('Erro ao carregar os pontos de coleta:', error);
  }
}

// Chama a função para carregar os pontos de coleta quando a página carregar
document.addEventListener('DOMContentLoaded', carregarPontosColeta);