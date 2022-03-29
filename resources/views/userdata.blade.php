@include('header')

@foreach ($users as $user)
    <h4>{{$user}}</h4>
@endforeach

@csrf

<script>
    var data = @json($users);
    console.log(data);
    console.log(data[0]);
</script>