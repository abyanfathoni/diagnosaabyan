<?php include 'header.php'; ?>

<header id="header" class="ex-header" style="padding-top: 8rem;padding-bottom: 2rem;">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="form">
                    <div class="container">
                        <p class="text-white">JAWABLAH DENGAN JUJUR SESUAI DENGAN APA YANG ANDA LIHAT!</p>

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-container">

                                    <?php
                                    $no = 0;
                                    $rule = array();
                                    $alternatif = mysqli_query($koneksi, "SELECT * FROM alternatif");
                                    if (!$alternatif) {
                                        echo "Error executing query: " . mysqli_error($koneksi);
                                        exit();
                                    }
                                    while ($ker = mysqli_fetch_array($alternatif)) {
                                        $nox = $no++;
                                        $xx = 0;
                                        $id_ker = $ker['alt_id'];
                                        $rule2 = array();
                                        $kecocokan2 = mysqli_query($koneksi, "SELECT * FROM kecocokan, gejala WHERE kec_gejala=gej_id AND kec_alternatif='$id_ker' AND kec_nilai=1");
                                        if (!$kecocokan2) {
                                            echo "Error executing query: " . mysqli_error($koneksi);
                                            exit();
                                        }
                                        while ($kec2 = mysqli_fetch_array($kecocokan2)) {
                                            $xxx = $xx++;
                                            array_push($rule2, $kec2['gej_inisial']);
                                        }
                                        array_push($rule, $rule2);
                                    }
                                    ?>

                                    <?php
                                    $gejala = isset($_GET['gejala']) ? $_GET['gejala'] : '';
                                    if ($gejala) {
                                        $query = "SELECT * FROM gejala WHERE gej_inisial='$gejala'";
                                        $pertanyaan_pertama = mysqli_query($koneksi, $query);
                                        if (!$pertanyaan_pertama) {
                                            echo "Error executing query: " . mysqli_error($koneksi);
                                            exit();
                                        }
                                        $pp = mysqli_fetch_array($pertanyaan_pertama);
                                        if ($pp) {
                                            ?>
                                            <form action="diagnosa_mulai2.php" method="post" class="m-0">
                                                <div class="row justify-item-center">
                                                    <div class="col-12">
                                                        <input type="hidden" name="id_user" value="<?php echo $_GET['id']; ?>">
                                                        <input type="hidden" name="inisial" value="<?php echo $pp['gej_inisial']; ?>">
                                                        <h1 class="mb-5 text-dark"><?php echo $pp['gej_inisial']; ?> <br><?php echo $pp['gej_nama']; ?> ?</h1>
                                                        <br>
                                                        <img src="img/<?php echo $pp['foto']; ?>" width=200 title="<?php echo $pp['foto']; ?>">
                                                        <br>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input type="radio" name="jawaban" value="1" class="form-control" required> YA
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input type="radio" name="jawaban" value="0" class="form-control" required> TIDAK
                                                    </div>
                                                    <div class="col-md-12">
                                                        <center>
                                                            <br>
                                                            <input class="form-control-submit-button mt-5 w-50" type="submit" value="SIMPAN JAWABAN" style="">
                                                        </center>
                                                    </div>
                                                </div>
                                            </form>
                                            <?php
                                        } else {
                                            echo "Gejala tidak ditemukan.";
                                        }
                                    } else {
                                        $inisial_pertanyaan_pertama = isset($rule[0][0]) ? $rule[0][0] : '';
                                        $query = "SELECT * FROM gejala WHERE gej_inisial='$inisial_pertanyaan_pertama'";
                                        $pertanyaan_pertama = mysqli_query($koneksi, $query);
                                        if (!$pertanyaan_pertama) {
                                            echo "Error executing query: " . mysqli_error($koneksi);
                                            exit();
                                        }
                                        $pp = mysqli_fetch_array($pertanyaan_pertama);
                                        if ($pp) {
                                            ?>
                                            <form action="diagnosa_mulai2.php" method="post" class="m-0">
                                                <div class="row justify-item-center">
                                                    <div class="col-12">
                                                        <input type="hidden" name="id_user" value="<?php echo $_GET['id']; ?>">
                                                        <input type="hidden" name="inisial" value="<?php echo $pp['gej_inisial']; ?>">
                                                        <h1 class="mb-5 text-dark"><?php echo $pp['gej_inisial']; ?> <br> <?php echo $pp['gej_nama']; ?> ?</h1>
                                                        <br>
                                                        <img src="img/<?php echo $pp['foto']; ?>" width=200 title="<?php echo $pp['foto']; ?>">
                                                        <br>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input type="radio" name="jawaban" value="1" class="form-control" required> YA
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input type="radio" name="jawaban" value="0" class="form-control" required> TIDAK
                                                    </div>
                                                    <div class="col-md-12">
                                                        <center>
                                                            <br>
                                                            <input class="form-control-submit-button mt-5 w-50" type="submit" value="SIMPAN JAWABAN" style="">
                                                        </center>
                                                    </div>
                                                </div>
                                            </form>
                                            <?php
                                        } else {
                                            echo "Gejala tidak ditemukan.";
                                        }
                                    }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<?php include 'footer.php'; ?>
