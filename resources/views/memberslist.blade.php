<h3>All Members List Here:</h3>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>E-mail</th>
        <th>Address</th>
    </tr>
    @foreach ($members as $item)
      <tr>
          <td>{{$item['id']}}</td>
          <td>{{$item['name']}}</td>
          <td>{{$item['email']}}</td>
          <td>{{$item['address']}}</td>
     </tr> 
    @endforeach
</table>