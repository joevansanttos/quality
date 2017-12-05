@extends('principal')

@section("cabecalho")
<h3>{{$a->cod}}</h3>
@stop

@section("conteudo")


<!-- PANEL RELATÓRIO DE NÃO CONFORMIDADE-->
<div class="panel-group">
  <div class="panel panel-warning">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#auditoria-naoconformidade">NÃO CONFORMIDADES</a>                             
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="auditoria-naoconformidade" class="panel-collapse collapse">
      <div class="panel-body">  
       @php($naoconformidadeInt = 1)    
       @foreach ($a->naoconformidades as $naoconformidade)
         @php($naoconformidadeString = (string)$naoconformidadeInt)
         @php($naoconformidadeHref = 'auditoria-naoconformidade-' . $naoconformidadeString)
         @php($naoconformidadeId = '#' . $naoconformidadeHref)
         <div class="panel-group">
           <div class="panel panel-danger">
             <div class="panel-heading">
               <h4 class="panel-title">
                 <a data-toggle="collapse" href="{{$naoconformidadeId}}">RELATÓRIO Nº {{$naoconformidade->n_relatorio}}</a>
                 <a href="encontrar/{{$naoconformidade->id}}"><button data-toggle="tooltip" data-placement="top" title="Alterar Não Conformidade" class="btn btn-danger btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a>
                 <a href="encontrar/{{$naoconformidade->id}}"><button data-toggle="tooltip" data-placement="top" title="Alterar Não Conformidade pela Projek" class="btn btn-success btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a>                                
                 <div class="clearfix"></div>
               </h4>
             </div>
             <div id="{{$naoconformidadeHref}}" class="panel-collapse collapse">
               <div class="panel-body"> 
                 <table class="table table-bordered">
                   <tr>
                     <td>Nº Contrato: {{$naoconformidade->n_contrato}}</td>
                   </tr>
                   <tr>
                     <td>Nº Relatório: {{$naoconformidade->n_relatorio}}</td>
                   </tr>
                   <tr>
                     <td>Tipo de Auditoria: {{$naoconformidade->tipo}}</td>
                   </tr>
                   <tr>
                     <td>Processo: {{$naoconformidade->processo}}</td>
                   </tr>
                   <tr>
                     <td>Norma: {{$naoconformidade->norma}}</td>
                   </tr>
                   <tr>
                     <td>Cláusula: {{$naoconformidade->clausula}}</td>
                   </tr>
                   <tr>
                     <td>Descrição: {{$naoconformidade->descricao}}</td>
                   </tr>
                    <tr>
                     <td>Grau: {{$naoconformidade->grau}}</td>
                   </tr>
                    <tr>
                     <td>Análise: {{$naoconformidade->analise}}</td>
                   </tr>
                    <tr>
                     <td>Correção: {{$naoconformidade->correcao}}</td>
                   </tr>
                    <tr>
                     <td>Data de Implementação: {{$naoconformidade->data_implementacao}}</td>
                   </tr>
                    <tr>
                     <td>Responsável : {{$naoconformidade->responsavel}}</td>
                   </tr>
                    <tr>
                     <td>Análise : {{$naoconformidade->analise}}</td>
                   </tr>
                    <tr>
                     <td>Correção : {{$naoconformidade->correcao}}</td>
                   </tr>
                    <tr>
                     <td>Status : {{$naoconformidade->status_verificacao}}</td>
                   </tr>
                 </table>
                                                      
               </div>
             </div>
           </div>   
         </div> 
         @php($naoconformidadeInt++)
       @endforeach                      
      </div>
    </div>
  </div>   
</div> 
<!-- FiM PANEL RELATÓRIO DE NÃO CONFORMIDADE--> 






@stop


@section("script")

@stop


