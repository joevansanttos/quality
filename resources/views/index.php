<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="ico/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <title>Projek | Gestão da Qualidade Total</title>

  </head>
  <body>
    <section id="login">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="form-wrap">
              <h1>Entre com o seu email:</h1>
              <form role="form" action="login.php" method="post" id="login-form" autocomplete="off">
                <div class="form-group">
                  <input type="email" name="email" id="email" class="form-control" placeholder="alguem@projek.com">
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
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </body>
  <footer id="footer">
      <div class="container">
          <div class="row">
              <div class="col-xs-12">
                  <p><img src="images/botao.png" width="40" right="40" ><span>PROJEK</span></p>
              </div>
          </div>
      </div>
  </footer>
</html>