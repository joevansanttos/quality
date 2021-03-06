<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Projek - Quality</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{ URL::asset('imagens/favicon.ico') }}"/>
    <link rel="stylesheet" href="{{ URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css') }}" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ URL::asset('vendors/font-awesome/css/font-awesome.min.css') }}" />
    <!-- NProgress -->
     <link rel="stylesheet" href="{{ URL::asset('vendors/switchery/dist/switchery.min.css') }}" />
    <link rel="stylesheet" href="{{ URL::asset('vendors/nprogress/nprogress.css') }}" />
    <link rel="stylesheet" href="{{ URL::asset('vendors/bootstrap-daterangepicker/daterangepicker.css') }}" />
    <link rel="stylesheet" href="{{ URL::asset('vendors/select2/dist/css/select2.min.css') }}" />
    <link rel="stylesheet" href="{{ URL::asset('vendors/iCheck/skins/flat/green.css') }}" />
    <link rel="stylesheet" href="{{ URL::asset('vendors/lou-multi-select/css/multi-select.css') }}" />

    <!-- Custom styling plus plugins -->
    <link rel="stylesheet" href="{{ URL::asset('vendors/build/css/custom.min.css') }}" />

    <link rel="stylesheet" href="{{ URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css') }}" />
    
    <style type="text/css">
      .carousel-control.left, .carousel-control.right {
      background-image:none; 
      color: rgba(0,0,0,0.3);
      }
    </style>
  </head>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <!-- Sidebar-->      
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index2.php" class="site_title"><i class="fa fa-rocket"></i><span> Projek Quality</span>
              </a>
            </div>

            <div class="clearfix"></div>

            <div class="profile clearfix">
              <div class="profile_pic">
                @php($exists = Storage::disk('public')->exists(Auth::user()->image))
                @if($exists == false )
                  <img src="{{asset('storage/user.png')}}" alt="..." class="img-circle profile_img" >
                @else
                  <img src="{{asset('storage/' . Auth::user()->image)}}" alt="..." class="img-circle profile_img" >
                @endif
              </div>
              <div class="profile_info">
                <span>Bem Vindo,</span>
                <h2>{{Auth::user()->name}}</h2>
              </div>
            </div>

            <br />

            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                @if (Auth::user()->profissao->id != 4)
                  <li><a><i class="fa fa-home"></i> Home<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/dashboard">Dashboard</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-users"></i> Usuários<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/users">Todos os Usuários</a></li>
                      <li><a href="/users/gestores">Gestores de Clientes</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-briefcase"></i> Clientes<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/clientes">Clientes</a></li>
                      <li><a href="/departamentos">Departamentos</a></li> 
                      <li><a href="/relatorios">Relatórios</a></li>                       
                    </ul>
                  </li>
                  <li><a><i class="fa fa-wrench"></i> Mapeamento<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/pis/todos">Todos os Manuais</a></li> 
                      <li><a href="/pis/inicial">Manuais Iniciados</a></li> 
                      <li><a href="/pis/andamento">Manuais em Andamento</a></li>
                      <li><a href="/pis/finalizado">Manuais Finalizados</a></li> 
                    </ul>
                  </li>
                @endif
                  <li><a><i class="fa fa-line-chart"></i> Auditoria<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/auditorias/todos">Todas as Auditorias</a></li> 
                      <li><a href="/auditorias/inicial">Auditorias Iniciadas</a></li> 
                      <li><a href="/auditorias/andamento">Auditorias em Andamento</a></li>
                      <li><a href="/auditorias/finalizado">Auditorias Finalizadas</a></li> 
                    </ul>
                  </li>
                @if (Auth::user()->profissao->id != 4)   
                  <li><a><i class="fa fa-graduation-cap"></i> Universidade<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    </ul>
                  </li> 
                @endif             
                </ul>
              </div>
            </div>
            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>          
          </div>
        </div>      
        <!-- Col-->
        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>
              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    @php($exists = Storage::disk('public')->exists(Auth::user()->image))
                    @if($exists == false)
                        <img src="{{asset('storage/user.png' )}}" >
                    @else
                      <img src="{{asset('storage/' . Auth::user()->image)}}" >
                    @endif                    
                    {{Auth::user()->name}}
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="/users/perfis"> Perfil</a></li>
                    <li>
                      <a href="javascript:;">
                        <span>Configurações</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Ajuda</a></li>
                    <li><a href="/logout"><i class="fa fa-sign-out pull-right"></i> Sair</a></li>
                  </ul>
                </li>
                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    
                  </a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation --> 
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                @yield('cabecalho')    
                
              </div>
              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Pesquise...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  @yield('titulo')
                  <div class="x_content">
                    @yield('conteudo')                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>      
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            PROJEK
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
        
      </div>
    </div>

    <script type="text/javascript" src="{{URL::asset('vendors/jquery/dist/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/nprogress/nprogress.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/fastclick/lib/fastclick.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/parsleyjs/dist/parsley.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/parsleyjs/dist/i18n/pt-br.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/iCheck/icheck.min.js')}}"></script>
    
    <script type="text/javascript" src="{{URL::asset('vendors/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/jquery.hotkeys/jquery.hotkeys.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/google-code-prettify/src/prettify.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/select2/dist/js/select2.full.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/echarts/dist/echarts.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/Chart.js/dist/Chart.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/raphael/raphael.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/morris.js/morris.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/bootstrap-progressbar/bootstrap-progressbar.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/raphael/raphael.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/moment/min/moment.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/cidade/cidades-estados-utf8.js')}}"></script>
    <script language="JavaScript" type="text/javascript" charset="utf-8">
      new dgCidadesEstados({
        cidade: document.getElementById('cidade'),
        estado: document.getElementById('estado')
       
      })
    </script>
    <script type="text/javascript" src="{{URL::asset('vendors/build/js/custom.min.js')}}"></script>
    @yield('script') 
  </body>
</html>
