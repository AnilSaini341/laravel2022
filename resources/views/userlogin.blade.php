@include('header')
<h2>User Login form</h2>

{{$errors}} 

@if($errors->any())
@foreach ($errors->all() as $error)
    <li>{{$error}}</li>
@endforeach
@endif

<form action="userform" method="POST">
    @csrf
    <input type="text" name="username" placeholder="Enter User Name" />
    <br>
    <span style="color: red">@error('username'){{$message}}@enderror</span>
    <br><br>
    <input type="password" name="password" placeholder="Enter Password" />
    <br>
    <span style="color: red">@error('password'){{$message}}@enderror</span>
    <br><br>
    <button type="submit">Login</button>
</form>