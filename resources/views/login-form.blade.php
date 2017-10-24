
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="{{ URL::asset('imagens/favicon.ico') }}"/>
    <link rel="stylesheet" type="text/css" href="css/index.css">

    <title>Projek | Gestão da Qualidade Total</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="{{ URL::asset('bootstrap/dist/css/bootstrap.min.css') }}" />
  </head>
  <body>
    <section id="login">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="form-wrap">
              <h1>Bem Vindo</h1>
              <form role="form" action="/login" method="post" id="login-form" autocomplete="off">
              	<input type="hidden" name="_token" value="{{csrf_token()}}">
                <div class="form-group">
                  <input type="email" name="email" id="email" class="form-control" placeholder="usuario@projek.com">
                </div>
                <div class="form-group">
                  <input type="password" name="senha" id="senha" class="form-control" placeholder="Senha">
                </div>
                <input type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Entrar">
              </form>
              <hr>
            </div>
          </div>
        </div>
      </div>
    </section>
    <script type="text/javascript" src="{{URL::asset('bootstrap/dist/js/bootstrap.min.js')}}"></script>
  </body>
  <footer id="footer">
      <div class="container">
          <div class="row">
              <div class="col-xs-12">
                  <p><img src="{{ URL::asset('imagens/favicon.ico') }}" width="40" right="40" ><span>PROJEK</span></p>
              </div>
          </div>
      </div>
  </footer>
</html>