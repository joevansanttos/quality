
<!-- PANEL INFORMAÇÕES DA ORGANIZAÇÃO-->
<div class="panel-group">
  <div class="panel panel-warning">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#auditoria-organizacao">1.1 INFORMAÇÕES DA ORGANIZAÇÃO</a>        
        <a href="/clientes/encontrar/{{$a->cliente->id}}"><button data-toggle="tooltip" data-placement="top" title="Editar Cliente" class="btn btn-warning btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a>                
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="auditoria-organizacao" class="panel-collapse collapse">
      <div class="panel-body"> 
        <table class="table table-bordered">
          <tr>
            <td>Cliente: {{$a->cliente->nome}}</td>
          </tr>
          <tr>
            <td>Endereço: {{$a->cliente->endereco}}</td>
          </tr>
          <tr>
            <td>Cidade: {{$a->cliente->cidade}}</td>
          </tr>
          <tr>
            <td>CEP: {{$a->cliente->cep}}</td>
          </tr>
           <tr>
            <td>Telefone: {{$a->cliente->tel}}</td>
          </tr>
           <tr>
            <td>Fax: {{$a->cliente->fax}}</td>
          </tr>
        </table>                                                  
      </div>
    </div>
  </div>   
</div> 
<!-- FiM PANEL INFORMAÇÕES DA ORGANIZAÇÃO-->

<!-- PANEL INFORMAÇÕES DO CONTATOS-->
<div class="panel-group">
  <div class="panel panel-warning">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#auditoria-contato">1.2 INFORMAÇÕES DOS CONTATOS</a>
        <a href="{{$a->id}}/gerais/contato/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Contato" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a> 
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="auditoria-contato" class="panel-collapse collapse">

      <!-- PANEL DO CONTATO-->
      <div class="panel-body"> 
        @php($contatoInt = 1)    
        @foreach ($a->contatos as $contato)
          @php($contatoString = (string)$contatoInt)
          @php($contatoHref = 'auditoria-contatos-' . $contatoString)
          @php($contatoId = '#' . $contatoHref)
          <div class="panel-group">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="{{$contatoId}}">{{$contatoString}}. CONTATO</a>
                  <a href="{{$contato->id}}/gerais/contato/encontrar"><button data-toggle="tooltip" data-placement="top" title="Alterar Contato" class="btn btn-danger btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a>              
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="{{$contatoHref}}" class="panel-collapse collapse">
                <div class="panel-body"> 
                  <table class="table table-bordered">
                    <tr>
                      <tr>
                        <td>Contato: {{$contato->nome}}</td>
                      </tr>
                       <tr>
                        <td>Telefone: {{$contato->tel}}</td>
                      </tr>
                       <tr>
                        <td>Email: {{$contato->email}}</td>
                      </tr>
                    </tr>
                  </table>     
                                                         
                </div>
              </div>
            </div>   
          </div> 
          @php($contatoInt++)
        @endforeach      

      </div>
      <!-- FiM PANEL DO CONTATO-->

    </div>
  </div>   
</div> 
<!-- FiM PANEL INFORMAÇÕES DO CONTATOS-->