<h2>Hi, {{session('username')}}
<h3>
    @if(session('user'))
    <b>Hello, {{session('user')}}</b>
    @endif
</h3>
</h2> <a href="/logout">Logout</a>
<h3>Persons list</h3>
<table border="1">
    <tr>
        <th>id</th>
        <th>userId</th>
        <th>title</th>
        <th>body</th>
    </tr>
    @foreach ($collection as $item)
      <tr>
          <td>{{$item['id']}}</td>
          <td>{{$item['userId']}}</td>
          <td>{{$item['title']}}</td>
          <td>{{$item['body']}}</td>
     </tr> 
    @endforeach
</table>