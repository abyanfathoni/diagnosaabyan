<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login | Diagnosa Penyakit Buta Warna Menggunakan Metode Forward Chaining Berbasis Android</title>
    <link href="assets_web/css/bootstrap.css" rel="stylesheet">
    <link href="assets_web/css/fontawesome-all.css" rel="stylesheet">
    <link href="assets_web/css/swiper.css" rel="stylesheet">
    <link href="assets_web/css/magnific-popup.css" rel="stylesheet">
    <link href="assets_web/css/styles.css" rel="stylesheet">
    <link rel="icon" href="assets_web/images/favicon.png">
    <style>
        /* Tambahkan gaya custom untuk form login */
        .form-container {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 30px;
            max-width: 400px;
            margin: auto;
            animation: fadeIn 1s ease-out;
        }

        .form-control-input {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: all 0.3s ease;
            box-sizing: border-box;
            font-size: 16px;
        }

        .form-control-input:focus {
            border-color: #7a4de8;
            box-shadow: 0 0 8px rgba(122, 77, 232, 0.2);
        }

        .form-control-submit-button {
            background-color: #7a4de8;
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 16px;
            width: 100%;
        }

        .form-control-submit-button:hover {
            background-color: #6937d3;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .label-control {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body data-spy="scroll" data-target=".fixed-top">

    <div class="spinner-wrapper">
        <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>
    </div>
    
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
        <div class="container">

            <a class="navbar-brand logo-text page-scroll" href="index.php">EyeSelf.</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-awesome fas fa-bars"></span>
                <span class="navbar-toggler-awesome fas fa-times"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="index.php">HOME <span class="sr-only">(current)</span></a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="riwayat.php">RIWAYAT</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="data.php">DATA</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="diagnosa.php">DIAGNOSA</a>
                    </li>
                </ul>
                <span class="nav-item">
                    <a class="btn-outline-sm py-3 px-4" href="login.php">LOGIN ADMIN</a>
                </span>
            </div>
        </div>
    </nav>

    <header id="header" class="ex-2-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <h1>Log In</h1>
                    
                    <?php
                    if(isset($_GET['alert'])){
                        ?>
                        <script src="assets_web/js/jquery.min.js"></script>
                        <script>
                            $(document).ready(function(){
                                $('#errorModal').modal('show');
                            });
                        </script>
                        <?php
                    }
                    ?>

                    <div class="form-container">
                        <form action="login_act.php" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control-input" id="lemail" autocomplete="off" name="username" required="required">
                                <label class="label-control" for="lemail">Username</label>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control-input" id="lpassword" name="password" required="required">
                                <label class="label-control" for="lpassword">Password</label>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control-submit-button">LOG IN</button>
                            </div>
                            <div class="form-message">
                                <div id="lmsgSubmit" class="h3 text-center hidden"></div>
                            </div>
                        </form>
                    </div> 

                </div> 
            </div> 
        </div> 
    </header> 

    <!-- Modal -->
    <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="errorModalLabel">Error</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Username dan Password salah.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <script src="assets_web/js/jquery.min.js"></script>
    <script src="assets_web/js/popper.min.js"></script>
    <script src="assets_web/js/bootstrap.min.js"></script>
    <script src="assets_web/js/jquery.easing.min.js"></script>
    <script src="assets_web/js/swiper.min.js"></script>
    <script src="assets_web/js/jquery.magnific-popup.js"></script>
    <script src="assets_web/js/validator.min.js"></script>
    <script src="assets_web/js/scripts.js"></script>
</body>
</html>
