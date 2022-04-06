<h3>All Members List Here:</h3>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>E-mail</th>
        <th>Address</th>
        <th>Operations</th>
    </tr>
    @foreach ($members as $item)
      <tr>
          <td>{{$item['id']}}</td>
          <td>{{$item['name']}}</td>
          <td>{{$item['email']}}</td>
          <td>{{$item['address']}}</td>
          <td><a href={{"deletemember/".$item['id']}}>Delete</a></td>
     </tr> 
    @endforeach
</table>

<div>
    {{-- Pagination  --}}
    {{$members->links()}}
</div>
<style>
    ul.pagination li {
    display: inline;
}
    li.page-item {
    list-style: none;
}
</style>