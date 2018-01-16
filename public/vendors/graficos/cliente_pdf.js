
function grafico_processos(departamentos, processos){
  var ctx = document.getElementById("processos").getContext('2d');
  var processos = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: departamentos,
          datasets: [{
              label: 'PROCESSOS POR DEPARTAMENTO',
              data: processos,
              backgroundColor: [
                  "#001a0d",
                  "#00331a",
                  "#004d26",
                  "#006633",
                  "#008040",
                  "#00994d",
                  "#00b359",
                  "#00cc66",
                  "#00e673",
                  "#00ff80",
                  "#1aff8c" 
              ],
              borderWidth: 1
          }]
      },
      options: {
          bezierCurve : false,
          legend: {
              display: false,
          },
          title: {
                  display: true,
                  text: 'Processos por Departamento'
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 0,
                      max: 30,
                      beginAtZero:true
                  }
              }]
          }
      }
  });
}

function grafico_operacoes(departamentos, operacoes){
  var ctx2 = document.getElementById("operacoes").getContext('2d');
  var operacoes = new Chart(ctx2, {
      type: 'bar',
      data: {
          labels: departamentos,
          datasets: [{
              label: 'Nª DE PROCESSOS COM CLASSIFICAÇÃO OPERAÇÃO',
              data: operacoes,
              backgroundColor: [
                  "#001a0d",
                  "#00331a",
                  "#004d26",
                  "#006633",
                  "#008040",
                  "#00994d",
                  "#00b359",
                  "#00cc66",
                  "#00e673",
                  "#00ff80",
                  "#1aff8c" 
              ],
              borderWidth: 1
          }]
      },
      options: {
          legend: {
              display: false,
          },
          title: {
                  display: true,
                  text: 'Processos com Classificação Operação'
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 0,
                      max: 30,
                      beginAtZero:true
                  }
              }]
          }
      }
  });
}

function grafico_gestoes(departamentos, gestoes){
  var ctx2 = document.getElementById("gestoes").getContext('2d');
  var gestoes = new Chart(ctx2, {
      type: 'bar',
      data: {
          labels: departamentos,
          datasets: [{
              label: 'Nª DE PROCESSOS COM CLASSIFICAÇÃO GESTÃO',
              data: gestoes,
              backgroundColor: [
                  "#001a0d",
                  "#00331a",
                  "#004d26",
                  "#006633",
                  "#008040",
                  "#00994d",
                  "#00b359",
                  "#00cc66",
                  "#00e673",
                  "#00ff80",
                  "#1aff8c" 
              ],
              borderWidth: 1
          }]
      },
      options: {
          legend: {
              display: false,
          },
          title: {
                  display: true,
                  text: 'Processos com Classificação Gestão'
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 0,
                      max: 30,
                      beginAtZero:true
                  }
              }]
          }
      }
  });
}

function grafico_suportes(departamentos, suportes){
  var ctx2 = document.getElementById("suportes").getContext('2d');
  var gestoes = new Chart(ctx2, {
      type: 'bar',
      data: {
          labels: departamentos,
          datasets: [{
              label: 'Nª DE PROCESSOS COM CLASSIFICAÇÃO SUPORTE',
              data: suportes,
              backgroundColor: [
                  "#001a0d",
                  "#00331a",
                  "#004d26",
                  "#006633",
                  "#008040",
                  "#00994d",
                  "#00b359",
                  "#00cc66",
                  "#00e673",
                  "#00ff80",
                  "#1aff8c" 
              ],
              borderWidth: 1
          }]
      },
      options: {
          legend: {
              display: false,
          },
          title: {
                  display: true,
                  text: 'Processos com Classificação Suporte'
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 0,
                      max: 30,
                      beginAtZero:true
                  }
              }]
          }
      }
  });
}

function grafico_inicial(departamentos, inicial){
  var ctx2 = document.getElementById("inicial").getContext('2d');
  var inicial = new Chart(ctx2, {
      type: 'bar',
      data: {
          labels: departamentos,
          datasets: [{
              label: 'Nª DE PROCESSOS COM CLASSIFICAÇÃO SUPORTE',
              data: inicial,
              backgroundColor: [
                  "#001a0d",
                  "#00331a",
                  "#004d26",
                  "#006633",
                  "#008040",
                  "#00994d",
                  "#00b359",
                  "#00cc66",
                  "#00e673",
                  "#00ff80",
                  "#1aff8c" 
              ],
              borderWidth: 1
          }]
      },
      options: {
          legend: {
              display: false,
          },
          title: {
                  display: true,
                  text: 'Processos com Maturidade Inicial'
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 0,
                      max: 30,
                      beginAtZero:true
                  }
              }]
          }
      }
  });
}

function grafico_repetitivo(departamentos, repetitivo){
  var ctx2 = document.getElementById("repetitivo").getContext('2d');
  var repetitivo = new Chart(ctx2, {
      type: 'bar',
      data: {
          labels: departamentos,
          datasets: [{
              label: 'Nª DE PROCESSOS COM CLASSIFICAÇÃO SUPORTE',
              data: repetitivo,
              backgroundColor: [
                  "#001a0d",
                  "#00331a",
                  "#004d26",
                  "#006633",
                  "#008040",
                  "#00994d",
                  "#00b359",
                  "#00cc66",
                  "#00e673",
                  "#00ff80",
                  "#1aff8c" 
              ],
              borderWidth: 1
          }]
      },
      options: {
          legend: {
              display: false,
          },
          title: {
                  display: true,
                  text: 'Processos com Maturidade Repetitiva'
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 0,
                      max: 30,
                      beginAtZero:true
                  }
              }]
          }
      }
  });
}

function grafico_definido(departamentos, definido){
  var ctx2 = document.getElementById("definido").getContext('2d');
  var definido = new Chart(ctx2, {
      type: 'bar',
      data: {
          labels: departamentos,
          datasets: [{
              label: 'Nª DE PROCESSOS COM CLASSIFICAÇÃO SUPORTE',
              data: definido,
              backgroundColor: [
                  "#001a0d",
                  "#00331a",
                  "#004d26",
                  "#006633",
                  "#008040",
                  "#00994d",
                  "#00b359",
                  "#00cc66",
                  "#00e673",
                  "#00ff80",
                  "#1aff8c" 
              ],
              borderWidth: 1
          }]
      },
      options: {
          legend: {
              display: false,
          },
          title: {
                  display: true,
                  text: 'Processos com Maturidade Definida'
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 0,
                      max: 30,
                      beginAtZero:true
                  }
              }]
          }
      }
  });
}

function grafico_gerenciado(departamentos, gerenciado){
  var ctx2 = document.getElementById("gerenciado").getContext('2d');
  var gerenciado = new Chart(ctx2, {
      type: 'bar',
      data: {
          labels: departamentos,
          datasets: [{
              label: 'Nª DE PROCESSOS COM CLASSIFICAÇÃO SUPORTE',
              data: gerenciado,
              backgroundColor: [
                  "#001a0d",
                  "#00331a",
                  "#004d26",
                  "#006633",
                  "#008040",
                  "#00994d",
                  "#00b359",
                  "#00cc66",
                  "#00e673",
                  "#00ff80",
                  "#1aff8c" 
              ],
              borderWidth: 1
          }]
      },
      options: {
          legend: {
              display: false,
          },
          title: {
                  display: true,
                  text: 'Processos com Maturidade Gerenciada'
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 0,
                      max: 30,
                      beginAtZero:true
                  }
              }]
          }
      }
  });
}

function grafico_otimizado(departamentos, otimizado){
  var ctx2 = document.getElementById("otimizado").getContext('2d');
  var otimizado = new Chart(ctx2, {
      type: 'bar',
      data: {
          labels: departamentos,
          datasets: [{
              label: 'Nª DE PROCESSOS COM CLASSIFICAÇÃO SUPORTE',
              data: otimizado,
              backgroundColor: [
                  "#001a0d",
                  "#00331a",
                  "#004d26",
                  "#006633",
                  "#008040",
                  "#00994d",
                  "#00b359",
                  "#00cc66",
                  "#00e673",
                  "#00ff80",
                  "#1aff8c" 
              ],
              borderWidth: 1
          }]
      },
      options: {
          legend: {
              display: false,
          },
          title: {
                  display: true,
                  text: 'Processos com Maturidade Otimizada'
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 0,
                      max: 30,
                      beginAtZero:true
                  }
              }]
          }
      }
  });
}




