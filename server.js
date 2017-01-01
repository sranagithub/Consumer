var express=require('express');
var app=express();

app.get('/', function(req, resp){
    resp.send("This is a response from server, modified");
    resp.end;

})
app.listen(3000, function(){
    console.log('server started at 3000');
})
