<h3>Edit Member </h3>
<form method="POST" action="/editmember">
    @csrf
    <input type="hidden" name="id" value="{{$data['id']}}" />
    <input type="text" name="name" value="{{$data['name']}}" /><br><br>
    <input type="text" name="email" value="{{$data['email']}}" /><br><br>
    <input type="text" name="address" value="{{$data['address']}}" /><br><br>
    <button type="submit">Update Member</button>
</form>