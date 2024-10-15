<?php include 'header.php'; ?>
<?php mysqli_query($koneksi,"delete from tmp_kecocokan"); ?>

<header id="header" class="ex-header" style="padding-top: 8rem;padding-bottom: 2rem;">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Diagnosa</h1>

                <div class="form">
                    <div class="container">

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-container">

                                    <h2>Isi data pasien</h2>

                                    <form action="diagnosa_act.php" method="post" data-toggle="validator" data-focus="false">

                                        <div class="form-group">
                                            <input class="form-control-input" autocomplete="off" type="text" name="nama" required>
                                            <label class="label-control" for="nama">Nama Lengkap</label>
                                            <div class="help-block with-errors"></div>
                                        </div>

                                        <div class="form-group">
                                            <input id="phone" class="form-control-input" autocomplete="off" type="tel" name="hp" required inputmode="numeric" pattern="[0-9]*">
                                            <label class="label-control" for="phone">Nomor HP</label>
                                            <div class="help-block with-errors"></div>
                                        </div>

                                        <div class="form-group">
                                            <button type="submit" class="form-control-submit-button">SIMPAN</button>
                                        </div>

                                    </form> 

                                </div> 
                            </div> 
                        </div> 

                    </div> 
                </div> 

            </div>
        </div>
    </div>
</header>

<style>
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
</style>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        var input = document.querySelector("#phone");
        window.intlTelInput(input, {
            initialCountry: "auto",
            geoIpLookup: function(success, failure) {
                fetch('https://ipinfo.io?token=YOUR_TOKEN')
                    .then(function(resp) { return resp.json(); })
                    .then(function(resp) { success(resp.country); })
                    .catch(function() { success("us"); });
            },
            utilsScript: "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/utils.js"
        });
    });
</script>

<?php include 'footer.php'; ?>
