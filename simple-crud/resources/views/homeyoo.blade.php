<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RFID APP</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="css/strap-dashboard.css">
</head>

<body>
    <div class="container"> 
        <div class="row mt-5">
            <div class="col-lg-18">
                <div class="form-group d-inline-flex">
                    <label for="pencarian"></label>
                    <input type="text" id="input" class="form-control" placeholder="Cari disini">
                    <button class="btn btn-primary"><i class="bi bi-search"></i></button>
                </div><br><br>

                <div id="read" class="m-2"></div>
            </div>
        </div>
    </div>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script>
        $(document).ready(function(){
            readData()
            $("#input").keyup(function(){
                var strcari = $("#input").val();
                if(strcari != ""){
                    $("#read").html('<center><p class="text-muted">Menunggu Mencari Data..</p></center>');
                    $.ajax({
                        type: "get",
                        url: "{{url('ajax')}}",
                        data: "name=" + strcari,
                        success:function(data){
                            $("#read").html(data);
                        }
                    });
                } else {
                    readData()
                }
            });
        });
        function readData() {
            $.get("{{ url('read') }}", {}, function(data, status) {
                    $("#read").html(data);
                }); 
        }
    </script>
</body>

</html>