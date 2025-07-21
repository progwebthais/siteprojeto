<?php
session_start();
$_SESSION['id'] = 1; // Simula usuário logado
$nome = "Teste";
$email = "teste@email.com";
$avatar = "avatar_padrao.png";
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <title>Teste Dropdown</title>
  <style>
    body {
      background-color: #0a001f;
      color: #ccc;
      font-family: 'Segoe UI', sans-serif;
      margin: 0;
      padding: 20px;
      text-align: center;
      justify-content: center;
    }

    .usuario-logado {
      position: relative;
      display: inline-block;
    }

    .avatar-pequeno {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      cursor: pointer;
      border: 2px solid #0ff;
      object-fit: cover;
    }

    .dropdown-perfil {
      display: none;
      position: absolute;
      top: 50px;
      right: 0;
      background-color: #111;
      color: white;
      padding: 15px;
      width: 260px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.7);
      z-index: 9999;
    }

    input[type="text"], input[type="email"] {
      width: 100%;
      padding: 8px;
      margin-bottom: 10px;
      border-radius: 5px;
      border: none;
    }

    button {
      width: 100%;
      padding: 8px;
      background: #0ff;
      color: #000;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
  </style>
</head>
<body>

<h1>Simulação de avatar dropdown</h1>

<div class="usuario-logado">
  <img src="../img/avatars/<?php echo $avatar; ?>" alt="Avatar" class="avatar-pequeno" id="abrirDropdownPerfil">
  <div id="dropdownPerfil" class="dropdown-perfil">
    <form>
      <label>Nome:</label>
      <input type="text" value="<?php echo $nome; ?>">

      <label>Email:</label>
      <input type="email" value="<?php echo $email; ?>">

      <button type="submit">Salvar</button>
    </form>
  </div>
</div>

<script>
document.addEventListener("DOMContentLoaded", function () {
  const avatar = document.getElementById("abrirDropdownPerfil");
  const dropdown = document.getElementById("dropdownPerfil");

  if (avatar && dropdown) {
    avatar.addEventListener("click", function (e) {
      e.stopPropagation();
      if (getComputedStyle(dropdown).display === 'none') {
        dropdown.style.display = 'block';
      } else {
        dropdown.style.display = 'none';
      }
    });

    window.addEventListener("click", function (e) {
      if (!dropdown.contains(e.target) && e.target !== avatar) {
        dropdown.style.display = "none";
      }
    });
  }
});
</script>

</body>
</html>
