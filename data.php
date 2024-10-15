<?php include 'header.php'; ?>
<?php mysqli_query($koneksi,"delete from tmp_kecocokan"); ?>
<style>
        .bg-primary {
    background-color: #614be8 !important;
}
</style>
<header id="header" class="ex-header" style="padding-top: 8rem;padding-bottom: 2rem;">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Data Penyakit</h1>
            </div>
        </div>
    </div>
</header>

<div class="container mt-4">

    <div class="card shadow-sm">
        <div class="card-header bg-primary text-white" style="color:#614be8;">
            <h4 class="card-title m-0" style="color: white;">Data Penyakit</h4>
        </div>
        <div class="card-body">
            <table class="table table-striped table-hover table-bordered">
                <thead class="thead-dark">
                    <tr><CENTER>
                        <th width="5%">No</th>
                        <th >Nama Penyakit</th>
                           <th style=" TEXT-ALIGN-LAST:CENTER;">Pengertian Jenis Penyakit Buta Warna</th>  
                           </CENTER>             
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1; 
                    $data = mysqli_query($koneksi,"select * from alternatif");    
                    while($d=mysqli_fetch_array($data)){
                        ?>
                        <tr>
                            <td><?php echo $no++; ?></td>
                            <td><?php echo $d['alt_nama'] ?></td>  
                            <td><?php echo $d['alt_penyebab'] ?></td>                 
                        </tr>
                        <?php
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>

</div>

<?php include 'footer.php'; ?>
