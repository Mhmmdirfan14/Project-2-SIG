<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="{{ asset('asset/login.css') }}">

</head>
<body>
<div class="login-container">
  <h2>LOGIN ADMIN</h2>
  <form class="login-form" action="{{ route('postlogin') }}" method="POST" id="loginForm">
    @csrf
    <div class="input-group">
      <label for="username">Username</label>
      <input type="text" id="name" name="name" required>
    </div>      
    <div class="input-group">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" required>
    </div>
    <button type="submit">Login</button>
  </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="assets/js/alert.js"></script>
</body>
</html>
