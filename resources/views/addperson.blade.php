<h3>Add Member</h3>

<form action="addmember" method="POST">
    @csrf
    <input type="text" name="name" placeholder="Enter Name" /><br><br>
    <input type="text" name="email" placeholder="Enter Email" /><br><br>
    <input type="text" name="address" placeholder="Enter Address" /><br><br>
    <button type="submit">Add Member</button>
</form>