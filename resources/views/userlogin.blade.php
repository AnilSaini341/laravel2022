@include('header')
<h2>User Login form</h2>
<form action="userform" method="POST">
    @csrf
    <input type="text" name="username" placeholder="Enter User Name" />
    <br><br>
    <input type="password" name="password" placeholder="Enter Password" />
    <br><br>
    <button type="submit">Login</button>
</form>